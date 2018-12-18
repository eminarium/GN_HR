class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :nationality, index: true
      t.references :marital_status, index: true
      t.string :photo_url
      t.string :first_name
      t.string :last_name
      t.string :patronymic
      t.boolean :gender
      t.date :dob
      t.boolean :is_local
      t.boolean :is_military_liable
      t.string :local_passport_serial
      t.string :local_passport_no
      t.date :local_passport_given_date
      t.string :local_passport_issued_by
      t.string :local_passport_scan_url
      t.text :notes

      t.timestamps
    end
  end
end
