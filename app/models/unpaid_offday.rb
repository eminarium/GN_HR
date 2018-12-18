class UnpaidOffday < ActiveRecord::Base
  belongs_to :unpaid_offday_type
  belongs_to :employee
  belongs_to :order
end
