class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])

    @all_positions = EmployeesPosition.where("assign_order_id=? OR release_order_id=?", @order.id, @order.id).includes(:employee, :position, :position_type, :assign_order, :release_order).order(:assign_order_id); # Bu işgäriň ähli wezipe bilen baglanyşykly buýruklary
    @tolegsiz_rugsatlar = UnpaidOffday.where(:order_id => @order.id, :unpaid_offday_type_id => 1).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli tölegsiz rugsatlar (doly gün) buýruklary
    @dersden_rugsatlar = UnpaidOffday.where(:order_id => @order.id, :unpaid_offday_type_id => 4).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli dersden rugsat (doly däl gün) buýruklary
    @zahmet_rugsatlar = PaidOffday.where(:order_id => @order.id, :paid_offday_type_id => 1).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli zähmet rugsatlary buýruklary
    @gosmaca_rugsatlar = PaidOffday.where(:order_id => @order.id, :paid_offday_type_id => 2).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli goşmaça rugsatlary buýruklary
    @caga_rugsatlar = UnpaidOffday.where(:order_id => @order.id, :unpaid_offday_type_id => 3).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli çaga seretmek boýunça rugsatlary buýruklary
    @is_saparlary = PaidOffday.where(:order_id => @order.id, :paid_offday_type_id => 3).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli iş saparlary buýruklary
    @umumy_buyruklar = GeneralOrderItem.where(:order_id => @order.id).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli umumy görnüşli buýruklary
    @temmiler = Warning.where(:order_id => @order.id).includes(:employee, :order).order(:order_id); # Bu işgäriň ähli temmi buýruklary

  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
    @order = Order.find(params[:id])
  end

  # POST /orders
  # POST /orders.json
  def create

    @orders = Order.all
    @order = Order.create(order_params)

=begin
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update

    @orders = Order.all
    @order = Order.find(params[:id])

    @order.update_attributes(order_params)

=begin
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  def delete
    @order = Order.find(params[:order_id])
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy

    @orders = Order.all
    @order = Order.find(params[:id])
    @order.destroy

=begin
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
=end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:order_no, :order_date, :order_title, :prefix, :postfix, :order_scan_path, :notes)
    end
end
