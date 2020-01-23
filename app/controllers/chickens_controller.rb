class ChickensController < ApplicationController
    before_action :find_chicken, only: [:show, :edit, :update, :destroy]

    def index
      @chickens = Chicken.all
    end

    def new
      @chicken = Chicken.new
    end

    def create
      @chicken = Chicken.create(chicken_params)
      redirect_to chicken_path(@chicken)
    end

    def show
    end

    def edit
    end

    def update
      @chicken.update(chicken_params)
      redirect_to chicken_path(@chicken)
    end

    def destroy
      find_chicken.destroy
      redirect_to chickens_path
    end

    private

    def chicken_params
      params.require(:chicken).permit(:name, :flavor, :age, :image)
    end

    def find_chicken
      @chicken = Chicken.find(params[:id])
    end

end
