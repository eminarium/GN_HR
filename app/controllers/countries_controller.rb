class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  # GET /countries
  # GET /countries.json
  def index
    @countries = Country.all
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
    @country = Country.find(params[:id])
  end

  # GET /countries/new
  def new
    @country = Country.new
  end

  # GET /countries/1/edit
  def edit
    @country = Country.find(params[:id])
  end

  # POST /countries
  # POST /countries.json
  def create
    @countries = Country.all
    @country = Country.create(country_params)
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    @countries = Country.all
    @country = Country.find(params[:id])

    @country.update_attributes(country_params)
  end

  def delete
    @country = Country.find(params[:country_id])
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @countries = Country.all
    @country = Country.find(params[:id])
    @country.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_params
      params.require(:country).permit(:country_name, :notes)
    end
end
