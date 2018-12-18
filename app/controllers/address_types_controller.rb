class AddressTypesController < ApplicationController
  before_action :set_address_type, only: [:show, :edit, :update, :destroy]

  # GET /address_types
  # GET /address_types.json
  def index
    @address_types = AddressType.all
  end

  # GET /address_types/1
  # GET /address_types/1.json
  def show
    @address_type = AddressType.find(params[:id])
  end

  # GET /address_types/new
  def new
    @address_type = AddressType.new
  end

  # GET /address_types/1/edit
  def edit
    @address_type = AddressType.find(params[:id])
  end

  # POST /address_types
  # POST /address_types.json
  def create
    @address_types = AddressType.all
    @address_type = AddressType.create(address_type_params)
  end

  # PATCH/PUT /address_types/1
  # PATCH/PUT /address_types/1.json
  def update
    @address_types = AddressType.all
    @address_type = AddressType.find(params[:id])

    @address_type.update_attributes(address_type_params)
  end

  def delete
    @address_type = AddressType.find(params[:address_type_id])
  end
  # DELETE /address_types/1
  # DELETE /address_types/1.json
  def destroy
    @address_types = AddressType.all
    @address_type = AddressType.find(params[:id])
    @address_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_type
      @address_type = AddressType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_type_params
      params.require(:address_type).permit(:address_type_title, :notes)
    end
end
