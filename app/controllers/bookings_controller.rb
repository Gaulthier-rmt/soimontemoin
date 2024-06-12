class BookingController < ApplicationController
  def create
    raise
    @booking = Booking.new(booking_params)
    @booking.witness = Witness.find(params[:witness_id])
    if @booking.save
      redirect_to witness_path(@booking.witness)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to witness_path(@booking.witness)
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :time)
  end
end
