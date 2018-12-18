class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  def welcome
  end
  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
    @employee = Employee.find(params[:id])
    @employee_phones = Phone.where(employee_id: @employee.id)
    @employee_educations = Education.where(employee_id: @employee.id)
    @employee_certificates = Certificate.where(employee_id: @employee.id)

    @current_positions = EmployeesPosition.where(:employee_id => @employee.id, :is_released => false, :is_changed => false).includes(:employee, :position, :position_type); # Şu wagt ýörgünli wezipeleri (doly, esasy işiniň daşyndan w.ş.m.)
    @all_positions = EmployeesPosition.where(:employee_id => @employee.id).includes(:employee, :position, :position_type, :assign_order, :release_order).order(:assign_order_id); # Bu işgäriň ähli wezipe bilen baglanyşykly buýruklary
    @tolegsiz_rugsatlar = UnpaidOffday.where(:employee_id => @employee.id, :unpaid_offday_type_id => 1).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli tölegsiz rugsatlar (doly gün) buýruklary
    @dersden_rugsatlar = UnpaidOffday.where(:employee_id => @employee.id, :unpaid_offday_type_id => 4).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli dersden rugsat (doly däl gün) buýruklary
    @zahmet_rugsatlar = PaidOffday.where(:employee_id => @employee.id, :paid_offday_type_id => 1).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli zähmet rugsatlary buýruklary
    @gosmaca_rugsatlar = PaidOffday.where(:employee_id => @employee.id, :paid_offday_type_id => 2).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli goşmaça rugsatlary buýruklary
    @caga_rugsatlar = UnpaidOffday.where(:employee_id => @employee.id, :unpaid_offday_type_id => 3).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli çaga seretmek boýunça rugsatlary buýruklary
    @is_saparlary = PaidOffday.where(:employee_id => @employee.id, :paid_offday_type_id => 3).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli iş saparlary buýruklary
    @umumy_buyruklar = GeneralOrderItem.where(:employee_id => @employee.id).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli umumy görnüşli buýruklary
    @temmiler = Warning.where(:employee_id => @employee.id).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli temmi buýruklary
  end

  # GET /employees/new
  def new
    @employee = Employee.new

    @nationalities = Nationality.all.order(:nationality_title)
    @marital_statuses = MaritalStatus.all
  end

  # GET /employees/1/edit
  def edit
    @employee = Employee.find(params[:id])

    @nationalities = Nationality.all.order(:nationality_title)
    @marital_statuses = MaritalStatus.all
  end

  # POST /employees
  # POST /employees.json
  def create
    @employees = Employee.all
    @employee = Employee.create(employee_params)

    @nationalities = Nationality.all.order(:nationality_title)
    @marital_statuses = MaritalStatus.all

=begin
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update

    @employees = Employee.all
    @employee = Employee.find(params[:id])

    @employee.update_attributes(employee_params)

    @nationalities = Nationality.all.order(:nationality_title)
    @marital_statuses = MaritalStatus.all

=begin
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @employee = Employee.find(params[:employee_id])
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employees = Employee.all
    @employee = Employee.find(params[:id])
    @employee.destroy

=begin
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:nationality_id, :marital_status_id, :photo_url, :first_name, :last_name, :patronymic, :gender, :dob, :is_local, :is_military_liable, :local_passport_serial, :local_passport_no, :local_passport_given_date, :local_passport_issued_by, :local_passport_scan_url, :notes)
    end
end
