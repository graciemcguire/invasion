class AbductionsController < ApplicationController
  before_action :find_abduction, only: [:show]

  def index
    @abductions = Abduction.all
  end

  def new
    @abduction = Abduction.new
    @aliens = Alien.all
    @chickens = Chicken.all
  end

  def create
    @abduction = Abduction.create(abduction_params)
    redirect_to abduction_path(@abduction)
  end

  def show
  end

  private

  def abduction_params
    params.require(:abduction).permit(:location, :alien_id, :chicken_id)
  end

  def find_abduction
    @abduction = Abduction.find(params[:id])
  end
end
