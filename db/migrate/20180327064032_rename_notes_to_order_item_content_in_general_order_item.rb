class RenameNotesToOrderItemContentInGeneralOrderItem < ActiveRecord::Migration
  def change
    rename_column :general_order_items, :notes, :order_item_content
  end
end
