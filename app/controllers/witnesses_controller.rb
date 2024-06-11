class WitnessesController < ApplicationController
  before_action :set_witness, only: [:show]

  def show
    @witness = Witness.find(params[:id])
  end

  private

  def set_witness
    @witness = Witness.find(params[:id])
  end

  # def witness_params
  #   params.require(:witness).permit(:name, :price_per_day, :address)
  # end
end
