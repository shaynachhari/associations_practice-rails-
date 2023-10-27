class Patient < ApplicationRecord
          self.table_name = :patients

    has_many :appointments
    has_many :doctors, through: :appointments
    
end
