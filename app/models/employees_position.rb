class EmployeesPosition < ActiveRecord::Base
  belongs_to :assign_order, :class_name => "Order"
  belongs_to :release_order, :class_name => "Order"
  belongs_to :employee
  belongs_to :position
  belongs_to :position_type
  belongs_to :release_reason

  def name_order_date
    return self.employee.first_and_last_name+" "+((self.assign_order.prefix.blank?)? "" : self.assign_order.prefix+"/")+self.assign_order.order_no.to_s+((self.assign_order.postfix.blank?) ? "" : "/"+self.assign_order.postfix)+" - "+self.assign_order.order_date.strftime("%d/%m/%Y")
  end

end
