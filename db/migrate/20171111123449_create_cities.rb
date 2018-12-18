class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.references :state, index: true
      t.string :city_name
      t.text :notes

      t.timestamps
    end
  end
end
