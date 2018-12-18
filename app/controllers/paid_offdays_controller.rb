class PaidOffdaysController < ApplicationController
  before_action :set_paid_offday, only: [:show, :edit, :update, :destroy]

  # GET /paid_offdays
  # GET /paid_offdays.json
  def index
    @paid_offdays = PaidOffday.includes(:employee, :paid_offday_type, :order).all
  end

  # GET /paid_offdays/1
  # GET /paid_offdays/1.json
  def show
    @paid_offday = PaidOffday.find(params[:id])
  end

  # GET /paid_offdays/new
  def new
    @paid_offday = PaidOffday.new

    @employees = Employee.all.order(:first_name)
    @paid_offday_types = PaidOffdayType.all.order(:paid_offday_type_title)
    @orders = Order.all.order(:order_no)
end

  # GET /paid_offdays/1/edit
  def edit
    @paid_offday = PaidOffday.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @paid_offday_types = PaidOffdayType.all.order(:paid_offday_type_title)
    @orders = Order.all.order(:order_no)
  end

  # POST /paid_offdays
  # POST /paid_offdays.json
  def create

    @paid_offdays = PaidOffday.all
    @paid_offday = PaidOffday.create(paid_offday_params)

    @employees = Employee.all.order(:first_name)
    @paid_offday_types = PaidOffdayType.all.order(:paid_offday_type_title)
    @orders = Order.all.order(:order_no)

=begin
    @paid_offday = PaidOffday.new(paid_offday_params)

    respond_to do |format|
      if @paid_offday.save
        format.html { redirect_to @paid_offday, notice: 'Paid offday was successfully created.' }
        format.json { render :show, status: :created, location: @paid_offday }
      else
        format.html { render :new }
        format.json { render json: @paid_offday.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /paid_offdays/1
  # PATCH/PUT /paid_offdays/1.json
  def update

    @paid_offdays = PaidOffday.all
    @paid_offday = PaidOffday.find(params[:id])

    @paid_offday.update_attributes(paid_offday_params)

    @employees = Employee.all.order(:first_name)
    @paid_offday_types = PaidOffdayType.all.order(:paid_offday_type_title)
    @orders = Order.all.order(:order_no)


=begin
    respond_to do |format|
      if @paid_offday.update(paid_offday_params)
        format.html { redirect_to @paid_offday, notice: 'Paid offday was successfully updated.' }
        format.json { render :show, status: :ok, location: @paid_offday }
      else
        format.html { render :edit }
        format.json { render json: @paid_offday.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @paid_offday = PaidOffday.find(params[:paid_offday_id])
  end

  # DELETE /paid_offdays/1
  # DELETE /paid_offdays/1.json
  def destroy

    @paid_offdays = PaidOffday.all
    @paid_offday = PaidOffday.find(params[:id])
    @paid_offday.destroy


=begin
    @paid_offday.destroy
    respond_to do |format|
      format.html { redirect_to paid_offdays_url, notice: 'Paid offday was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paid_offday
      @paid_offday = PaidOffday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paid_offday_params
      params.require(:paid_offday).permit(:employee_id, :order_id, :paid_offday_type_id, :start_date, :return_date, :day_quantity, :notes)
    end
end
