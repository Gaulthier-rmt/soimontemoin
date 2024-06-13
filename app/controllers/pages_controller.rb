class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home show]

  def home
    @witnesses = Witness.all
  end

  def dashboard
    @reserved_witnesses = Booking.all.where(user: current_user)
    @witnesses_reserved_for_me = Booking.all.where(witness: current_user)
  end

  def show
    @user = User.find(params[:id])
  end
end
