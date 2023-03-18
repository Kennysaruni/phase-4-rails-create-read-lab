class PlantsController < ApplicationController

    def index
        render json: Plant.all
    end

    def show
        render json: Plant.find_by(id: params[:id])
    end

    def create
        render json: Plant.create(plant_params), status:201
    end

    private
    def plant_params
        params.permit(:name, :image, :price)
    end
end
