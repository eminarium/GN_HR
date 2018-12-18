class CreateProlongations < ActiveRecord::Migration
  def change
    create_table :prolongations do |t|
      t.references :employees_position, index: true
      t.date :start_date
      t.boolean :is_temporary
      t.date :end_date
      t.references :order, index: true
      t.text :notes

      t.timestamps
    end
  end
end
