class CreateParentTypes < ActiveRecord::Migration
  def change
    create_table :parent_types do |t|
      t.string :parent_type_title
      t.text :notes

      t.timestamps
    end
  end
end
