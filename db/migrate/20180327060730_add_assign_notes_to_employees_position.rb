class AddAssignNotesToEmployeesPosition < ActiveRecord::Migration
  def change
    add_column :employees_positions, :assign_notes, :text
  end
end
