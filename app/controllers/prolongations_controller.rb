class ProlongationsController < ApplicationController
  before_action :set_prolongation, only: [:show, :edit, :update, :destroy]

  # GET /prolongations
  # GET /prolongations.json
  def index
    @prolongations = Prolongation.includes(:employees_position).all
  end

  # GET /prolongations/1
  # GET /prolongations/1.json
  def show
    @prolongations = Prolongation.find(params[:id])
  end

  # GET /prolongations/new
  def new
    @prolongation = Prolongation.new

    @employees_positions = EmployeesPosition.all.order(:assigned_date)
    @orders = Order.all.order(:order_no)
  end

  # GET /prolongations/1/edit
  def edit
    @prolongation = Prolongation.find(params[:id])

    @employees_positions = EmployeesPosition.all.order(:assigned_date)
    @orders = Order.all.order(:order_no)
  end

  # POST /prolongations
  # POST /prolongations.json
  def create
    @prolongations = Prolongation.all
    @prolongation = Prolongation.create(prolongation_params)

    @employees_positions = EmployeesPosition.all.order(:assigned_date)
    @orders = Order.all.order(:order_no)
=begin
    respond_to do |format|
      if @prolongation.save
        format.html { redirect_to @prolongation, notice: 'Prolongation was successfully created.' }
        format.json { render :show, status: :created, location: @prolongation }
      else
        format.html { render :new }
        format.json { render json: @prolongation.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /prolongations/1
  # PATCH/PUT /prolongations/1.json
  def update
    @prolongations = Prolongation.all
    @prolongation = Prolongation.find(params[:id])

    @prolongation.update_attributes(prolongation_params)

=begin
    respond_to do |format|
      if @prolongation.update(prolongation_params)
        format.html { redirect_to @prolongation, notice: 'Prolongation was successfully updated.' }
        format.json { render :show, status: :ok, location: @prolongation }
      else
        format.html { render :edit }
        format.json { render json: @prolongation.errors, status: :unprocessable_entity }
      end
    end
=end
  end


  def delete
    @prolongation = Prolongation.find(params[:prolongation_id])
  end

  # DELETE /prolongations/1
  # DELETE /prolongations/1.json
  def destroy

    @prolongations = Prolongation.all
    @prolongation = Prolongation.find(params[:id])
    @prolongation.destroy


=begin
    @prolongation.destroy
    respond_to do |format|
      format.html { redirect_to prolongations_url, notice: 'Prolongation was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prolongation
      @prolongation = Prolongation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prolongation_params
      params.require(:prolongation).permit(:employees_position_id, :start_date, :is_temporary, :end_date, :order_id, :notes)
    end
end
