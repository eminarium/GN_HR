class Certificate < ActiveRecord::Base
  belongs_to :employee
  belongs_to :certificate_type
end
