class Photographer < ApplicationRecord
  has_many :pictures
  has_many :albums
  has_many :categories, through: :pictures

  has_one_attached :avatar
end
