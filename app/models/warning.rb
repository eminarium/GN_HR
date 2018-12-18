class Warning < ActiveRecord::Base
  belongs_to :employee
  belongs_to :order
end
