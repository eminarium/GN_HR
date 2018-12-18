class AddIsOpenToDepartment < ActiveRecord::Migration
  def change
    add_column :departments, :is_open, :boolean
  end
end
