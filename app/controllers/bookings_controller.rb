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
    @booking.booking_status = "attente"
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

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(booking_status: "accepte")
  #   redirect_to dashboard_path
  # end

  def accept
    # raise
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: "acceptée")
    redirect_to dashboard_path
  end

  def decline
    # raise
    @booking = Booking.find(params[:id])
    @booking.update(booking_status: "déclinée")
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:booking, :wedding_date, :wedding_address, :witness_id, :user_id, :booking_status)
  end
end
