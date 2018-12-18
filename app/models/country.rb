class Country < ActiveRecord::Base
  has_many :foreign_cities
end
