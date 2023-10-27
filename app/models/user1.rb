class User1 < ApplicationRecord
  belongs_to :supervisor, class_name: "User", optional: true
  has_many :subordinates, class_name: "User", foreign_key: "supervisor_id"
end

