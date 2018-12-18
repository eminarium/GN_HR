class Prolongation < ActiveRecord::Base
  belongs_to :employees_position
  belongs_to :order
end
