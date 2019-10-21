class Photographer < ApplicationRecord
  has_many :albums
  has_many :pictures
end
