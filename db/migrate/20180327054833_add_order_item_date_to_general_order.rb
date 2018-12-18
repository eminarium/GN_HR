class AddOrderItemDateToGeneralOrder < ActiveRecord::Migration
  def change
    add_column :general_orders, :order_item_date, :date
  end
end
