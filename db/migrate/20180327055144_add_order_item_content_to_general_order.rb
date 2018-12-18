class AddOrderItemContentToGeneralOrder < ActiveRecord::Migration
  def change
    add_column :general_orders, :order_item_content, :text
  end
end
