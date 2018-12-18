class StatesController < ApplicationController
  before_action :set_state, only: [:show, :edit, :update, :destroy]

  # GET /states
  # GET /states.json
  def index
    @states = State.all
  end

  # GET /states/1
  # GET /states/1.json
  def show
    @state = State.find(params[:id])
  end

  # GET /states/new
  def new
    @state = State.new
  end

  # GET /states/1/edit
  def edit
    @state = State.find(params[:id])
  end

  # POST /states
  # POST /states.json
  def create
    @states = State.all
    @state = State.create(state_params)
  end

  # PATCH/PUT /states/1
  # PATCH/PUT /states/1.json
  def update
    @states = State.all
    @state = State.find(params[:id])

    @state.update_attributes(state_params)
  end

  def delete
    @state = State.find(params[:state_id])
  end

  # DELETE /states/1
  # DELETE /states/1.json
  def destroy
    @states = State.all
    @state = State.find(params[:id])
    @state.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def state_params
      params.require(:state).permit(:state_name, :notes)
    end
end
