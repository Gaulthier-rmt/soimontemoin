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
    @reserved_witnesses = Booking.all.where(user: current_user)
    @witnesses_reserved_for_me = Booking.all.where(witness: current_user)
  end

  def show
    @user = User.find(params[:id])
  end
end
