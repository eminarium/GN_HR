class ForeignCitiesController < ApplicationController
  before_action :set_foreign_city, only: [:show, :edit, :update, :destroy]

  # GET /foreign_cities
  # GET /foreign_cities.json
  def index
    @foreign_cities = ForeignCity.includes(:country).all
  end

  # GET /foreign_cities/1
  # GET /foreign_cities/1.json
  def show
    @foreign_city = ForeignCity.find(params[:id])
  end

  # GET /foreign_cities/new
  def new
    @foreign_city = ForeignCity.new

    @countries = Country.all.order(:country_name)
  end

  # GET /foreign_cities/1/edit
  def edit
    @foreign_city = ForeignCity.find(params[:id])

    @countries = Country.all.order(:country_name)
  end

  # POST /foreign_cities
  # POST /foreign_cities.json
  def create
    @foreign_cities = ForeignCity.all
    @foreign_city = ForeignCity.create(foreign_city_params)

    @countries = Country.all.order(:country_name)
  end

  # PATCH/PUT /foreign_cities/1
  # PATCH/PUT /foreign_cities/1.json
  def update
    @foreign_cities = ForeignCity.all
    @foreign_city = ForeignCity.find(params[:id])

    @foreign_city.update_attributes(foreign_city_params)

    @countries = Country.all.order(:country_name)
  end

  def delete
    @foreign_city = ForeignCity.find(params[:foreign_city_id])
  end

  # DELETE /foreign_cities/1
  # DELETE /foreign_cities/1.json
  def destroy
    @foreign_cities = ForeignCity.all
    @foreign_city = ForeignCity.find(params[:id])
    @foreign_city.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_foreign_city
      @foreign_city = ForeignCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def foreign_city_params
      params.require(:foreign_city).permit(:country_id, :foreign_city_name, :notes)
    end
end
