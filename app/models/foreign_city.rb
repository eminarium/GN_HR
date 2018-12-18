class ForeignCity < ActiveRecord::Base
  belongs_to :country
end
