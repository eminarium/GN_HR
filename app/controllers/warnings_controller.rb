class WarningsController < ApplicationController
  before_action :set_warning, only: [:show, :edit, :update, :destroy]

  # GET /warnings
  # GET /warnings.json
  def index
    @warnings = Warning.includes(:employee).includes(:order).all
  end

  # GET /warnings/1
  # GET /warnings/1.json
  def show
    @warning = Warning.find(params[:id])
  end

  # GET /warnings/new
  def new
    @warning = Warning.new

    @employees = Employee.all.order(:first_name)
    @orders = Order.all.order(:order_date)
  end

  # GET /warnings/1/edit
  def edit
    @warning = Warning.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @orders = Order.all.order(:order_date)
  end

  # POST /warnings
  # POST /warnings.json
  def create

    @warnings = Warning.all
    @warning = Warning.create(warning_params)

    @employees = Employee.all.order(:first_name)
    @orders = Order.all.order(:order_date)

=begin
    @warning = Warning.new(warning_params)

    respond_to do |format|
      if @warning.save
        format.html { redirect_to @warning, notice: 'Warning was successfully created.' }
        format.json { render :show, status: :created, location: @warning }
      else
        format.html { render :new }
        format.json { render json: @warning.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /warnings/1
  # PATCH/PUT /warnings/1.json
  def update

    @warnings = Warning.all
    @warning = Warning.find(params[:id])

    @warning.update_attributes(warning_params)

    @employees = Employee.all.order(:first_name)
    @orders = Order.all.order(:order_date)

=begin
    respond_to do |format|
      if @warning.update(warning_params)
        format.html { redirect_to @warning, notice: 'Warning was successfully updated.' }
        format.json { render :show, status: :ok, location: @warning }
      else
        format.html { render :edit }
        format.json { render json: @warning.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @warning = Warning.find(params[:warning_id])
  end

  # DELETE /warnings/1
  # DELETE /warnings/1.json
  def destroy

    @warnings = Warning.all
    @warning = Warning.find(params[:id])
    @warning.destroy

=begin
    @warning.destroy
    respond_to do |format|
      format.html { redirect_to warnings_url, notice: 'Warning was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warning
      @warning = Warning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def warning_params
      params.require(:warning).permit(:employee_id, :order_id, :warning_reason, :notes)
    end
end
