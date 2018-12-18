class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.references :department, index: true
      t.string :position_title
      t.text :notes

      t.timestamps
    end
  end
end
