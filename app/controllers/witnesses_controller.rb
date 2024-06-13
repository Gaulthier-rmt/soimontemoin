class WitnessesController < ApplicationController
  before_action :set_witness, only: [:show]

  skip_before_action :authenticate_user!, only: %i[show]

  def show
    @witness = Witness.find(params[:id])
    @booking= Booking.new
  end

  def new
    @witness = Witness.new
  end

  def create
    @witness = Witness.new(witness_params)
    @witness.user = current_user
    # raise
    @witness.save!
    redirect_to witness_path(@witness)
  end

  def update
    @witness = Witness.find(params[:id])
    @witness.update(name: params[:witness][:name], price_per_day: params[:witness][:price_per_day], address: params[:witness][:address])
    redirect_to witness_path(@witness)
  end

  def destroy
    @witness = Witness.find(params[:id])
    @witness.destroy
    redirect_to root_path
  end

  def edit
    @witness = Witness.find(params[:id])
  end

  private

  def set_witness
    @witness = Witness.find(params[:id])
  end

  def witness_params
    params.require(:witness).permit(:name, :price_per_day, :address, :gender, :photo, :description)
  end
end
