class ManagerAccount < ApplicationRecord
    belongs_to :manager
    has_one :accountDetail
end
