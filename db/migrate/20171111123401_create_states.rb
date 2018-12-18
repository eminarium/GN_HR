class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state_name
      t.text :notes

      t.timestamps
    end
  end
end
