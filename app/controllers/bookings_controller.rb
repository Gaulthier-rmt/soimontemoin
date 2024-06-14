class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @witness = @booking.witness
  end

  def create
    # raise
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.wedding_address = params[:booking][:wedding_address]
    # @booking.wedding_date = Date.new(params[:booking]["wedding_date(1i)"].to_i, params[:booking]["wedding_date(2i)"].to_i, params[:booking]["wedding_date(3i)"].to_i)
    @booking.wedding_date = params[:booking][:wedding_date]
    @booking.witness = Witness.find(params[:booking][:witness_id])
    @booking.booking_status = "pending"
    if @booking.save
      redirect_to dashboard_path
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
    params.require(:booking).permit(:booking, :wedding_date, :wedding_address, :witness_id, :user_id, :booking_status)
  end
end
