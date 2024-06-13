class UsersController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[new create show]

  def new
    @user = User.new
    @user.build_address
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :phone_number, :avatar, :bio)
  end

  def address_params
    params.require(:address).permit(:street, :city, :zipcode)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_address
    @address = @user.address
  end
end
