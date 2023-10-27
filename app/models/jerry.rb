class Jerry < ApplicationRecord
    self.table_name = :jerries
    has_and_belongs_to_many :toms
end
