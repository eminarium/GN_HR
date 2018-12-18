class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]

  # GET /regions
  # GET /regions.json
  def index
    @regions = Region.includes(:state).all
  end

  # GET /regions/1
  # GET /regions/1.json
  def show
    @region = Region.find(params[:id])
  end

  # GET /regions/new
  def new
    @region = Region.new

    @states = State.all.order(:state_name)
  end

  # GET /regions/1/edit
  def edit
    @region = Region.find(params[:id])

    @states = State.all.order(:state_name)
  end

  # POST /regions
  # POST /regions.json
  def create
    @regions = Region.all
    @region = Region.create(region_params)

    @states = State.all.order(:state_name)
  end

  # PATCH/PUT /regions/1
  # PATCH/PUT /regions/1.json
  def update
    @regions = Region.all
    @region = Region.find(params[:id])

    @region.update_attributes(region_params)

    @states = State.all.order(:state_name)
  end

  def delete
    @region = Region.find(params[:region_id])
  end
  # DELETE /regions/1
  # DELETE /regions/1.json
  def destroy
    @regions = Region.all
    @region = Region.find(params[:id])
    @region.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_params
      params.require(:region).permit(:state_id, :region_name, :notes)
    end
end
