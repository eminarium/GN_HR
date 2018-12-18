class CreatePaidOffdays < ActiveRecord::Migration
  def change
    create_table :paid_offdays do |t|
      t.references :employee, index: true
      t.references :order, index: true
      t.references :paid_offday_type, index: true
      t.date :start_date
      t.date :end_date
      t.integer :day_quantity
      t.text :notes

      t.timestamps
    end
  end
end
