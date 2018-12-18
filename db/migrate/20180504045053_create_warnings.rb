class CreateWarnings < ActiveRecord::Migration
  def change
    create_table :warnings do |t|
      t.references :employee, index: true
      t.references :order, index: true
      t.text :warning_reason
      t.text :notes

      t.timestamps
    end
  end
end
