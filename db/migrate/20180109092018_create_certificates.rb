class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.references :employee, index: true
      t.references :certificate_type, index: true
      t.string :certificate_title
      t.string :certificate_no
      t.string :issued_by
      t.date :issued_date
      t.date :expiry_date
      t.text :notes

      t.timestamps
    end
  end
end
