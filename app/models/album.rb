class Album < ApplicationRecord
  belongs_to :photographer
  has_many :album_pictures
  has_many :pictures, through: :album_pictures
end
