class MaritalStatusesController < ApplicationController
  before_action :set_marital_status, only: [:show, :edit, :update, :destroy]

  # GET /marital_statuses
  # GET /marital_statuses.json
  def index
    @marital_statuses = MaritalStatus.all
  end

  # GET /marital_statuses/1
  # GET /marital_statuses/1.json
  def show
    @marital_status = MaritalStatus.find(params[:id])
  end

  # GET /marital_statuses/new
  def new
    @marital_status = MaritalStatus.new
  end

  # GET /marital_statuses/1/edit
  def edit
    @marital_status = MaritalStatus.find(params[:id])
  end

  # POST /marital_statuses
  # POST /marital_statuses.json
  def create
    @marital_statuses = MaritalStatus.all
    @marital_status = MaritalStatus.create(marital_status_params)
  end

  # PATCH/PUT /marital_statuses/1
  # PATCH/PUT /marital_statuses/1.json
  def update
    @marital_statuses = MaritalStatus.all
    @marital_status = MaritalStatus.find(params[:id])

    @marital_status.update_attributes(marital_status_params)
  end

  def delete
    @marital_status = MaritalStatus.find(params[:marital_status_id])
  end

  # DELETE /marital_statuses/1
  # DELETE /marital_statuses/1.json
  def destroy
    @marital_statuses = MaritalStatus.all
    @marital_status = MaritalStatus.find(params[:id])
    @marital_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marital_status
      @marital_status = MaritalStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marital_status_params
      params.require(:marital_status).permit(:marital_status_title, :notes)
    end
end
