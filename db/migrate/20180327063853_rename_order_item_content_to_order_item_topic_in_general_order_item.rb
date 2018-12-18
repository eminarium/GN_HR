class RenameOrderItemContentToOrderItemTopicInGeneralOrderItem < ActiveRecord::Migration
  def change
    rename_column :general_order_items, :order_item_content, :order_item_topic
  end
end
