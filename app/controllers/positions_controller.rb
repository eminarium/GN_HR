class PositionsController < ApplicationController
  before_action :set_position, only: [:show, :edit, :update, :destroy]

  # GET /positions
  # GET /positions.json
  def index
    @positions = Position.includes(:department).all
  end

  # GET /positions/1
  # GET /positions/1.json
  def show
    @position = Position.find(params[:id])
  end

  # GET /positions/new
  def new
    @position = Position.new
    @position.quantity = 0

    @departments = Department.all.order(:department_title)
  end

  # GET /positions/1/edit
  def edit
    @position = Position.find(params[:id])
    @departments = Department.all.order(:department_title)
  end

  # POST /positions
  # POST /positions.json
  def create
    @positions = Position.all
    @position = Position.create(position_params)

    @departments = Department.all.order(:department_title)
  end

  # PATCH/PUT /positions/1
  # PATCH/PUT /positions/1.json
  def update
    @positions = Position.all
    @position = Position.find(params[:id])

    @position.update_attributes(position_params)

    @departments = Department.all.order(:department_title)
  end

  def delete
    @position = Position.find(params[:position_id])
  end

  # DELETE /positions/1
  # DELETE /positions/1.json
  def destroy
    @positions = Position.all
    @position = Position.find(params[:id])
    @position.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_position
      @position = Position.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def position_params
      params.require(:position).permit(:department_id, :position_title, :quantity, :notes)
    end
end
