class AddQuantityToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :quantity, :integer
  end
end
