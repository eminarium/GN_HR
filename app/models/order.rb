class Order < ActiveRecord::Base
has_many :assign_orders, :class_name => "EmployeesPosition", :foreign_key => "assign_order_id"
has_many :release_orders, :class_name => "EmployeesPosition", :foreign_key => "release_order_id"

  def order_no_and_date
    return ((self.prefix.blank?)? "" : self.prefix+"/")+self.order_no.to_s+((self.postfix.blank?) ? "" : "/"+self.postfix)+" - "+self.order_date.strftime("%d/%m/%Y")
  end

end
