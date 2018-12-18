class AddAssignOrderIdAndReleaseOrderIdToEmployeesPositions < ActiveRecord::Migration
  def change
    add_column :employees_positions, :assign_order_id, :integer
    add_column :employees_positions, :release_order_id, :integer
  end
end
