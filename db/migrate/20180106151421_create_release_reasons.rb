class CreateReleaseReasons < ActiveRecord::Migration
  def change
    create_table :release_reasons do |t|
      t.string :release_reason_title
      t.text :notes

      t.timestamps
    end
  end
end
