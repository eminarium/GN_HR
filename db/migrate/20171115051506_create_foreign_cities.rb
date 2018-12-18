class CreateForeignCities < ActiveRecord::Migration
  def change
    create_table :foreign_cities do |t|
      t.references :country, index: true
      t.string :foreign_city_name
      t.text :notes

      t.timestamps
    end
  end
end
