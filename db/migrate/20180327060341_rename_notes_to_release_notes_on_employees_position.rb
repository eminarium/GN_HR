class RenameNotesToReleaseNotesOnEmployeesPosition < ActiveRecord::Migration
  def change
    rename_column :employees_positions, :notes, :release_notes
  end
end
