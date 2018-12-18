class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.references :employee, index: true
      t.references :parent_type, index: true
      t.string :first_name
      t.string :last_name
      t.string :patronymic
      t.boolean :gender
      t.date :dob
      t.text :notes

      t.timestamps
    end
  end
end
