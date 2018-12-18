class RemoveOrderContentFromGeneralOrder < ActiveRecord::Migration
  def change
    remove_column :general_orders, :order_content, :text
  end
end
