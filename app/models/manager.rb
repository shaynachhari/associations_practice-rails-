class Manager < ApplicationRecord
    has_one :managerAccount
    has_one :accountDetail, through: :managerAccount
end
