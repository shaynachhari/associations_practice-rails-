class EmployeeAll < ApplicationRecord
 has_many :subordinates, class_name: "EmployeeAll",foreign_key: "manager_id"
 belongs_to :manager, class_name: "EmployeeAll", optional: true



end
