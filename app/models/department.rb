class Department < ActiveRecord::Base
  has_many :positions
  has_many :children, class_name: "Node", foreign_key: "parent_department_id"
  belongs_to :parent, class_name: "Node"
end
