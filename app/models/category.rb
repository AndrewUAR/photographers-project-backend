class Category < ApplicationRecord
  has_many :picture_categories
  has_many :picture, through: :picture_categories
end
