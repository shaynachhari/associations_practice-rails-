class Student < ApplicationRecord
    belongs_to :mentor, class_name: "Student", optional: true
    has_many :mentor, class_name: "Student", foreign_key: "mentor_id"
end
