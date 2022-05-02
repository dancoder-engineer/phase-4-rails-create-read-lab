class PlantsController < ApplicationController

        def index
            render json: Plant.all
        end
    
        def show
            render json: Plant.find(params[:id])
        end
        
        def create
            created = Plant.create(permitted)
            render json: created, status: :created
        end

        private

        def permitted
            params.permit(:name, :image, :price)
        end
    
end
