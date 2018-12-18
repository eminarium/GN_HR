class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.references :employee, index: true
      t.references :phone_type, index: true
      t.string :phone_no
      t.text :notes

      t.timestamps
    end
  end
end
