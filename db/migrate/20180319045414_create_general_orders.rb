class CreateGeneralOrders < ActiveRecord::Migration
  def change
    create_table :general_orders do |t|
      t.references :order, index: true
      t.references :employee, index: true
      t.text :order_content
      t.text :notes

      t.timestamps
    end
  end
end
