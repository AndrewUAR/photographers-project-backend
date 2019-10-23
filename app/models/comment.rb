class Comment < ApplicationRecord
  belongs_to :picture
  belongs_to :photographer
end
