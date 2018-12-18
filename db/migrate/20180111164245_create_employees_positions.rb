class CreateEmployeesPositions < ActiveRecord::Migration
  def change
    create_table :employees_positions do |t|
      t.references :employee, index: true
      t.references :position, index: true
      t.references :position_type, index: true
      t.boolean :is_released
      t.boolean :is_changed
      t.date :assigned_date
      t.date :released_date
      t.references :release_reason, index: true
      t.boolean :is_temporary
      t.date :temporary_start_date
      t.date :temporary_end_date
      t.text :notes

      t.timestamps
    end
  end
end
