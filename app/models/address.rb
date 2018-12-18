class Address < ActiveRecord::Base
  belongs_to :address_type
  belongs_to :employee
  belongs_to :country
  belongs_to :city
  belongs_to :foreign_city
  belongs_to :state
  belongs_to :region
  belongs_to :county
end
