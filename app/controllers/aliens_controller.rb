class AliensController < ApplicationController
  before_action :find_alien, only: [:show, :edit, :update, :destroy]

  def index
    @aliens = Alien.all
  end

  def new
    @alien = Alien.new
  end

  def create
    @alien = Alien.create(alien_params)
    redirect_to alien_path(@alien)
  end

  def show
  end

  def edit
  end

  def update
    @alien.update(alien_params)
    redirect_to alien_path(@alien)
  end

  def destroy
    find_alien.destroy
    redirect_to aliens_path
  end

  private

  def alien_params
    params.require(:alien).permit(:name, :planet, :favorite_food, :image)
  end

  def find_alien
    @alien = Alien.find(params[:id])
  end

end
