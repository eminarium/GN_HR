class CitiesController < ApplicationController
  before_action :set_city, only: [:show, :edit, :update, :destroy]

  # GET /cities
  # GET /cities.json
  def index
    @cities = City.all
  end

  # GET /cities/1
  # GET /cities/1.json
  def show
    @city = City.find(params[:id])
  end

  # GET /cities/new
  def new
    @city = City.new

    @states = State.all.order(:state_name)
  end

  # GET /cities/1/edit
  def edit
    @city = City.find(params[:id])

    @states = State.all.order(:state_name)
  end

  # POST /cities
  # POST /cities.json
  def create
    @cities = City.all

    if (params[:city][:state_id].blank?)
      params[:city][:state_id] = 0
    end

    @city = City.create(city_params)

    @states = State.all.order(:state_name)
  end

  # PATCH/PUT /cities/1
  # PATCH/PUT /cities/1.json
  def update
    @cities = City.all
    @city = City.find(params[:id])

    if (params[:city][:state_id].blank?)
      params[:city][:state_id] = 0
    end

    @city.update_attributes(city_params)

    @states = State.all.order(:state_name)
  end

  def delete
    @city = City.find(params[:city_id])
  end

  # DELETE /cities/1
  # DELETE /cities/1.json
  def destroy
    @cities = City.all
    @city = City.find(params[:id])
    @city.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city
      @city = City.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def city_params
      params.require(:city).permit(:state_id, :city_name, :notes)
    end
end
