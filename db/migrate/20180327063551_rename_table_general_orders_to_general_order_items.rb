class RenameTableGeneralOrdersToGeneralOrderItems < ActiveRecord::Migration
  def change
    rename_table :general_orders, :general_order_items
  end
end
