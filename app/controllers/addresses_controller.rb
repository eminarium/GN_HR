class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :update, :destroy]

  # GET /addresses
  # GET /addresses.json
  def index
    @addresses = Address.includes(:employee).includes(:address_type).all
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
    @address = Address.find(params[:id])
  end

  # GET /addresses/new
  def new
    @address = Address.new

    @address_types = AddressType.all.order(:address_type_title)
    @employees = Employee.all.order(:first_name)
    @countries = Country.all.order(:country_name)
    @cities = City.all.order(:city_name)
    @foreign_cities = ForeignCity.all.order(:foreign_city_name)
    @states = State.all.order(:state_name)
    @regions = Region.all.order(:region_name)
    @counties = County.all.order(:county_name)
  end

  # GET /addresses/1/edit
  def edit
    @address = Address.find(params[:id])

    @address_types = AddressType.all.order(:address_type_title)
    @employees = Employee.all.order(:first_name)
    @countries = Country.all.order(:country_name)
    @cities = City.all.order(:city_name)
    @foreign_cities = ForeignCity.all.order(:foreign_city_name)
    @states = State.all.order(:state_name)
    @regions = Region.all.order(:region_name)
    @counties = County.all.order(:county_name)
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @addresses = Address.all
    @address = Address.create(address_params)

    @address_types = AddressType.all.order(:address_type_title)
    @employees = Employee.all.order(:first_name)
    @countries = Country.all.order(:country_name)
    @cities = City.all.order(:city_name)
    @foreign_cities = ForeignCity.all.order(:foreign_city_name)
    @states = State.all.order(:state_name)
    @regions = Region.all.order(:region_name)
    @counties = County.all.order(:county_name)
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    @addresses = Address.all
    @address = Address.find(params[:id])

    @address.update_attributes(address_params)

    @address_types = AddressType.all.order(:address_type_title)
    @employees = Employee.all.order(:first_name)
    @countries = Country.all.order(:country_name)
    @cities = City.all.order(:city_name)
    @foreign_cities = ForeignCity.all.order(:foreign_city_name)
    @states = State.all.order(:state_name)
    @regions = Region.all.order(:region_name)
    @counties = County.all.order(:county_name)
  end


  def delete
    @address = Address.find(params[:address_id])
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @addresses = Address.all
    @address = Address.find(params[:id])
    @address.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:address_type_id, :employee_id, :country_id, :city_id, :foreign_city_id, :state_id, :region_id, :county_id, :street, :apartment, :flat, :village, :quartal, :rayon, :street_passage, :register_start_date, :register_end_date, :notes)
    end
end
