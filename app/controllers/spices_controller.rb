class SpicesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # GET/spices --all
    def index
        spices = Spice.all
        render json: spices
    end

    # GET
    def show
        spices=Spice.find_by(id:params[:id])
        render json: spices
    end

    # POST
    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    # UPDATE
    def update
        spice = Spice.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
    end

    # DELETE
    def destroy
        spice = Spice.find_by(id: params[:id])
        spice.destroy
        head :no_content
    end


    private
    
    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
    def render_not_found_response
        render json: { error: "Bird not found" }, status: :not_found
    end
end
