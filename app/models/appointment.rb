class Appointment < ApplicationRecord
     self.table_name = :appointments
    belongs_to :patient
    belongs_to :doctor
end
