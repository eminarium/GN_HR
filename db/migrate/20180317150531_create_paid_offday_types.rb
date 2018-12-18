class CreatePaidOffdayTypes < ActiveRecord::Migration
  def change
    create_table :paid_offday_types do |t|
      t.string :paid_offday_type_title
      t.text :notes

      t.timestamps
    end
  end
end
