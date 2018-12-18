class CreateMaritalStatuses < ActiveRecord::Migration
  def change
    create_table :marital_statuses do |t|
      t.string :marital_status_title
      t.text :notes

      t.timestamps
    end
  end
end
