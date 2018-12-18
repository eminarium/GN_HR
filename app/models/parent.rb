class Parent < ActiveRecord::Base
  belongs_to :employee
  belongs_to :parent_type
end
