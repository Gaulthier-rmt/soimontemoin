class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home show]

  def home
    @witnesses = Witness.all
  end

  def dashboard
    @witnesses_reserved_from_me = Booking.joins(:witness).where(witness: { user_id: current_user.id })
    @reserved_witnesses = Booking.where(user: current_user)
    # raise
  end

  def show
    @user = User.find(params[:id])
  end
end
