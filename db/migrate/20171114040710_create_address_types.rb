class CreateAddressTypes < ActiveRecord::Migration
  def change
    create_table :address_types do |t|
      t.string :address_type_title
      t.text :notes

      t.timestamps
    end
  end
end
