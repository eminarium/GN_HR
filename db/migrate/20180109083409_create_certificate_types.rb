class CreateCertificateTypes < ActiveRecord::Migration
  def change
    create_table :certificate_types do |t|
      t.string :certificate_type_title
      t.text :notes

      t.timestamps
    end
  end
end
