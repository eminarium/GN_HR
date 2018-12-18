class RenameEndDateInUnpaidOffdaysToReturnDate < ActiveRecord::Migration
  def change
    rename_column :unpaid_offdays, :end_date, :return_date
  end
end
