class CreatePositionTypes < ActiveRecord::Migration
  def change
    create_table :position_types do |t|
      t.string :position_type_title
      t.text :notes

      t.timestamps
    end
  end
end
