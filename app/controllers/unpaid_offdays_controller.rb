class UnpaidOffdaysController < ApplicationController
  before_action :set_unpaid_offday, only: [:show, :edit, :update, :destroy]

  # GET /unpaid_offdays
  # GET /unpaid_offdays.json
  def index
    @unpaid_offdays = UnpaidOffday.includes(:employee).includes(:unpaid_offday_type).includes(:order).all
  end

  # GET /unpaid_offdays/1
  # GET /unpaid_offdays/1.json
  def show
    @unpaid_offday = UnpaidOffday.find(params[:id])
  end

  # GET /unpaid_offdays/new
  def new
    @unpaid_offday = UnpaidOffday.new

    @employees = Employee.all.order(:first_name)
    @unpaid_offday_types = UnpaidOffdayType.all.order(:unpaid_offday_type_title)
    @orders = Order.all.order(:order_no)
  end

  # GET /unpaid_offdays/1/edit
  def edit
    @unpaid_offday = UnpaidOffday.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @unpaid_offday_types = UnpaidOffdayType.all.order(:unpaid_offday_type_title)
    @orders = Order.all.order(:order_no)
  end

  # POST /unpaid_offdays
  # POST /unpaid_offdays.json
  def create

    @unpaid_offdays = UnpaidOffday.all
    @unpaid_offday = UnpaidOffday.create(unpaid_offday_params)

    @employees = Employee.all.order(:first_name)
    @unpaid_offday_types = UnpaidOffdayType.all.order(:unpaid_offday_type_title)
    @orders = Order.all.order(:order_no)

=begin
    @unpaid_offday = UnpaidOffday.new(unpaid_offday_params)

    respond_to do |format|
      if @unpaid_offday.save
        format.html { redirect_to @unpaid_offday, notice: 'Unpaid offday was successfully created.' }
        format.json { render :show, status: :created, location: @unpaid_offday }
      else
        format.html { render :new }
        format.json { render json: @unpaid_offday.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /unpaid_offdays/1
  # PATCH/PUT /unpaid_offdays/1.json
  def update

    @unpaid_offdays = UnpaidOffday.all
    @unpaid_offday = UnpaidOffday.find(params[:id])

    @unpaid_offday.update_attributes(unpaid_offday_params)

    @employees = Employee.all.order(:first_name)
    @unpaid_offday_types = UnpaidOffdayType.all.order(:unpaid_offday_type_title)
    @orders = Order.all.order(:order_no)

=begin
    respond_to do |format|
      if @unpaid_offday.update(unpaid_offday_params)
        format.html { redirect_to @unpaid_offday, notice: 'Unpaid offday was successfully updated.' }
        format.json { render :show, status: :ok, location: @unpaid_offday }
      else
        format.html { render :edit }
        format.json { render json: @unpaid_offday.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @unpaid_offday = UnpaidOffday.find(params[:unpaid_offday_id])
  end

  # DELETE /unpaid_offdays/1
  # DELETE /unpaid_offdays/1.json
  def destroy

    @unpaid_offdays = UnpaidOffday.all
    @unpaid_offday = UnpaidOffday.find(params[:id])
    @unpaid_offday.destroy

=begin
    @unpaid_offday.destroy
    respond_to do |format|
      format.html { redirect_to unpaid_offdays_url, notice: 'Unpaid offday was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unpaid_offday
      @unpaid_offday = UnpaidOffday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unpaid_offday_params
      params.require(:unpaid_offday).permit(:unpaid_offday_type_id, :employee_id, :order_id, :start_date, :return_date, :day_quantity, :notes)
    end
end
