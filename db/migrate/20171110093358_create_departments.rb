class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :department_title
      t.integer :parent_department_id
      t.text :notes

      t.timestamps
    end
  end
end
