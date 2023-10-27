class Doctor < ApplicationRecord
    self.table_name = :doctors

    has_many :appointments
    has_many :patient, through: :appointments
end
