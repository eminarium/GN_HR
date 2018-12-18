class Employee < ActiveRecord::Base
  belongs_to :nationality
  belongs_to :marital_status

  has_many  :phones

  def first_and_last_name
    return self.first_name+" "+self.last_name
  end
end
