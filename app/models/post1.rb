class Post1 < ApplicationRecord
    has_many :poly_comments,  as: :commentable
end
