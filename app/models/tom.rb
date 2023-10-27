class Tom < ApplicationRecord
    self.table_name = :toms

    has_and_belongs_to_many :jerries
end
