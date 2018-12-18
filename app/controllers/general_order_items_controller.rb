class GeneralOrderItemsController < ApplicationController
  before_action :set_general_order_item, only: [:show, :edit, :update, :destroy]

  # GET /general_orders
  # GET /general_orders.json
  def index
    @general_order_items = GeneralOrderItem.includes(:employee).includes(:order).all
  end

  # GET /general_orders/1
  # GET /general_orders/1.json
  def show
    @general_order_item = GeneralOrderItem.find(params[:id])
  end

  # GET /general_orders/new
  def new
    @general_order_item = GeneralOrderItem.new

    @employees = Employee.all.order(:first_name)
    @orders = Order.all.order(:order_date)
  end

  # GET /general_orders/1/edit
  def edit
    @general_order_item = GeneralOrderItem.find(params[:id])

    @employees = Employee.all.order(:first_name)
    @orders = Order.all.order(:order_date)
  end

  # POST /general_orders
  # POST /general_orders.json
  def create

    @general_order_items = GeneralOrderItem.all
    @general_order_item = GeneralOrderItem.create(general_order_item_params)

    @employees = Employee.all.order(:first_name)
    @orders = Order.all.order(:order_date)

=begin
    @general_order = GeneralOrder.new(general_order_params)

    respond_to do |format|
      if @general_order.save
        format.html { redirect_to @general_order, notice: 'General order was successfully created.' }
        format.json { render :show, status: :created, location: @general_order }
      else
        format.html { render :new }
        format.json { render json: @general_order.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /general_orders/1
  # PATCH/PUT /general_orders/1.json
  def update

    @general_order_items = GeneralOrderItem.all
    @general_order_item = GeneralOrderItem.find(params[:id])

    @general_order_item.update_attributes(general_order_item_params)

    @employees = Employee.all.order(:first_name)
    @orders = Order.all.order(:order_date)

=begin
    respond_to do |format|
      if @general_order.update(general_order_params)
        format.html { redirect_to @general_order, notice: 'General order was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_order }
      else
        format.html { render :edit }
        format.json { render json: @general_order.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @general_order_item = GeneralOrderItem.find(params[:general_order_item_id])
  end

  # DELETE /general_orders/1
  # DELETE /general_orders/1.json
  def destroy

    @general_order_items = GeneralOrderItem.all
    @general_order_item = GeneralOrderItem.find(params[:id])
    @general_order_item.destroy

=begin
    @general_order.destroy
    respond_to do |format|
      format.html { redirect_to general_orders_url, notice: 'General order was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_order_item
      @general_order_item = GeneralOrderItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_order_item_params
      params.require(:general_order_item).permit(:order_id, :employee_id, :order_item_topic, :order_item_date, :order_item_content)
    end
end
