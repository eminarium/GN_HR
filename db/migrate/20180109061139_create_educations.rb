class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.references :employee, index: true
      t.references :degree, index: true
      t.string :institution_title
      t.string :diploma_title
      t.string :diploma_no
      t.date :start_date
      t.date :end_date
      t.text :notes

      t.timestamps
    end
  end
end
