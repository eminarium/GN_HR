class CreateWorkExperiences < ActiveRecord::Migration
  def change
    create_table :work_experiences do |t|
      t.references :employee, index: true
      t.string :organization_title
      t.date :start_date
      t.date :end_date
      t.string :position_title
      t.references :position_type, index: true
      t.text :notes

      t.timestamps
    end
  end
end
