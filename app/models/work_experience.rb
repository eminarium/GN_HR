class WorkExperience < ActiveRecord::Base
  belongs_to :employee
  belongs_to :position_type
end
