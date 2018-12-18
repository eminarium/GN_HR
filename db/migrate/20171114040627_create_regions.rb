class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.references :state, index: true
      t.string :region_name
      t.text :notes

      t.timestamps
    end
  end
end
