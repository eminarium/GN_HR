class Position < ActiveRecord::Base
  belongs_to :department

  def position_and_department
    return self.position_title+"-"+self.department.department_title
  end

end
