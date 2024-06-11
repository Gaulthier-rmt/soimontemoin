class PagesController < ApplicationController
  def home
    @witnesses = Witness.all
  end
end
