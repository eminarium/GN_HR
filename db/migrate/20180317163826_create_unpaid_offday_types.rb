class CreateUnpaidOffdayTypes < ActiveRecord::Migration
  def change
    create_table :unpaid_offday_types do |t|
      t.string :unpaid_offday_type_title
      t.text :notes

      t.timestamps
    end
  end
end
