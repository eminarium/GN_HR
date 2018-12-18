class EmployeesPositionsController < ApplicationController
  before_action :set_employees_position, only: [:show, :edit, :update, :destroy]

  # GET /employees_positions
  # GET /employees_positions.json
  def index
    @employees_positions = EmployeesPosition.includes(:employee, :position, :position_type, :assign_order, :release_order, :release_reason).all
  end

  # GET /employees_positions/1
  # GET /employees_positions/1.json
  def show
    @employees_position = EmployeesPosition.find(params[:id])
  end

  # GET /employees_positions/new
  def new
    @employees_position = EmployeesPosition.new

    @employees = Employee.all.order(:first_name)
    @positions = Position.all.order(:position_title)
    @position_types = PositionType.all
    @release_reasons = ReleaseReason.all
    @assign_orders = Order.all.order(:order_no)
    @release_orders = Order.all.order(:order_no)
  end

  # GET /employees_positions/1/edit
  def edit
    @employees_position = EmployeesPosition.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @positions = Position.all.order(:position_title)
    @position_types = PositionType.all
    @release_reasons = ReleaseReason.all
    @assign_orders = Order.all.order(:order_no)
    @release_orders = Order.all.order(:order_no)
  end

  # POST /employees_positions
  # POST /employees_positions.json
  def create
    @employees_positions = EmployeesPosition.all
    @employees_position = EmployeesPosition.create(employees_position_params)

    @employees = Employee.all.order(:first_name)
    @positions = Position.all.order(:position_title)
    @position_types = PositionType.all
    @release_reasons = ReleaseReason.all
    @assign_orders = Order.all.order(:order_no)
    @release_orders = Order.all.order(:order_no)

=begin
    respond_to do |format|
      if @employees_position.save
        format.html { redirect_to @employees_position, notice: 'Employees position was successfully created.' }
        format.json { render :show, status: :created, location: @employees_position }
      else
        format.html { render :new }
        format.json { render json: @employees_position.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /employees_positions/1
  # PATCH/PUT /employees_positions/1.json
  def update

    @employees_positions = EmployeesPosition.all
    @employees_position = EmployeesPosition.find(params[:id])

    @employees_position.update_attributes(employees_position_params)

    @employees = Employee.all.order(:first_name)
    @positions = Position.all.order(:position_title)
    @position_types = PositionType.all
    @release_reasons = ReleaseReason.all
    @assign_orders = Order.all.order(:order_no)
    @release_orders = Order.all.order(:order_no)

=begin
    respond_to do |format|
      if @employees_position.update(employees_position_params)
        format.html { redirect_to @employees_position, notice: 'Employees position was successfully updated.' }
        format.json { render :show, status: :ok, location: @employees_position }
      else
        format.html { render :edit }
        format.json { render json: @employees_position.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @employees_position = EmployeesPosition.find(params[:employees_position_id])
  end

  # DELETE /employees_positions/1
  # DELETE /employees_positions/1.json
  def destroy

    @employees_positions = EmployeesPosition.all
    @employees_position = EmployeesPosition.find(params[:id])
    @employees_position.destroy

    @employees = Employee.all

=begin
    @employees_position.destroy
    respond_to do |format|
      format.html { redirect_to employees_positions_url, notice: 'Employees position was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employees_position
      @employees_position = EmployeesPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employees_position_params
      params.require(:employees_position).permit(:employee_id, :position_id, :position_type_id, :is_released, :is_changed, :assign_order_id, :assigned_date, :release_order_id, :released_date, :release_reason_id, :is_temporary, :temporary_start_date, :temporary_end_date, :assign_notes, :release_notes)
    end
end
