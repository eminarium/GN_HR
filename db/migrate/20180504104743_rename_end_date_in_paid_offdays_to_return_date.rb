class RenameEndDateInPaidOffdaysToReturnDate < ActiveRecord::Migration
  def change
    rename_column :paid_offdays, :end_date, :return_date
  end
end
