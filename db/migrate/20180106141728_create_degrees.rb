class CreateDegrees < ActiveRecord::Migration
  def change
    create_table :degrees do |t|
      t.string :degree_title
      t.text :notes

      t.timestamps
    end
  end
end
