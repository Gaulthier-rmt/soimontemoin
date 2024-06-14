class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home show]

  def home
    @witness = Witness.new

    @witnesses = Witness.all
    if params[:witness].present?
      if params[:witness][:name].present? || params[:witness][:gender].present? || params[:witness][:price_per_day].present?
        @witnesses = Witness.search_name_gender_and_price_per_day("#{params[:witness][:name]} #{params[:witness][:gender]} #{params[:witness][:price_per_day]}")
      end
    end
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
