class CountiesController < ApplicationController
  before_action :set_county, only: [:show, :edit, :update, :destroy]

  # GET /counties
  # GET /counties.json
  def index
    @counties = County.includes(:state).all
  end

  # GET /counties/1
  # GET /counties/1.json
  def show
    @county= County.find(params[:id])
  end

  # GET /counties/new
  def new
    @county = County.new

    @states = State.all.order(:state_name)
  end

  # GET /counties/1/edit
  def edit
    @county= County.find(params[:id])

    @states = State.all.order(:state_name)
  end

  # POST /counties
  # POST /counties.json
  def create
    @counties = County.all

    @county = County.create(county_params)

    @states = State.all.order(:state_name)
  end

  # PATCH/PUT /counties/1
  # PATCH/PUT /counties/1.json
  def update
    @counties = County.all
    @county = County.find(params[:id])

    @county.update_attributes(county_params)

    @states = State.all.order(:state_name)
  end

  def delete
    @county = County.find(params[:county_id])
  end

  # DELETE /counties/1
  # DELETE /counties/1.json
  def destroy
    @counties = County.all
    @county = County.find(params[:id])
    @county.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_county
      @county = County.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def county_params
      params.require(:county).permit(:state_id, :county_name, :notes)
    end
end
