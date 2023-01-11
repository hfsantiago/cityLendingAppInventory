class WorkingOrder < ApplicationRecord
  belongs_to :asset
  belongs_to :employee_tecnico, class_name: 'Employee', foreign_key: 'id_employee_tecnico'
  has_many :working_order_activities
end
