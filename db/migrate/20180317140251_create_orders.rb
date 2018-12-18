class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_no
      t.date :order_date
      t.string :order_title
      t.string :prefix
      t.string :postfix
      t.string :order_scan_path
      t.text :notes

      t.timestamps
    end
  end
end
