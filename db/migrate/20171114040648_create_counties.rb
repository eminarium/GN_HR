class CreateCounties < ActiveRecord::Migration
  def change
    create_table :counties do |t|
      t.references :state, index: true
      t.string :county_name
      t.text :notes

      t.timestamps
    end
  end
end
