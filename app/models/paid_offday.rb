class PaidOffday < ActiveRecord::Base
  belongs_to :employee
  belongs_to :order
  belongs_to :paid_offday_type
end
