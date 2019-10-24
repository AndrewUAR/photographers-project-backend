class Photographer < ApplicationRecord
  has_many :pictures, :dependent => :delete_all
  has_many :albums, :dependent => :destroy
  has_many :categories, through: :pictures

  has_one_attached :image
end
