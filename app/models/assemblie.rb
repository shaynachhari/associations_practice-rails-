class Assemblie < ApplicationRecord
    has_and_belongs_to_many :parts
end
