class Album < ApplicationRecord
  belongs_to :photographer
  has_many :album_pictures, dependent: :destroy
  has_many :pictures, through: :album_pictures
end
