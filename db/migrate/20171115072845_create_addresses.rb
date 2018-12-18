class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :address_type, index: true
      t.references :employee, index: true
      t.references :country, index: true
      t.references :city, index: true
      t.references :foreign_city, index: true
      t.references :state, index: true
      t.references :region, index: true
      t.references :county, index: true
      t.string :street
      t.string :apartment
      t.integer :flat
      t.string :village
      t.string :quartal
      t.string :rayon
      t.string :street_passage
      t.date :register_start_date
      t.date :register_end_date
      t.text :notes

      t.timestamps
    end
  end
end
