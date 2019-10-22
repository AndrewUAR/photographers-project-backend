# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'securerandom'

#
Photographer.delete_all
Picture.delete_all
Album.delete_all
Category.delete_all
AlbumPicture.delete_all
PictureCategory.delete_all


def time_rand from = 0.0, to = Time.now
    Time.at(from + rand * (to.to_f - from.to_f))
end


10.times.each do
  name = Faker::Artist.name
  bio = Faker::Quote.famous_last_words
  city = Faker::Movies::LordOfTheRings.location
  Photographer.create(name: name, birthdate: Time.now, start_date: time_rand, bio: bio, city: city)
end


50.times.each do
  name = Faker::Hipster.word
  Picture.create(name: name, description: "blah", photographer_id: rand(10), created_at: Time.now, updated_at: Time.now)
end

5.times.each do
  name = Faker::House.room
  Album.create(name: name, photographer_id: rand(10), created_at: Time.now, updated_at: Time.now)
end


10.times.each do
  name = Faker::Music.genre
  Category.create(name: name)
end

10.times.each do
  AlbumPicture.create(album_id: rand(10), picture_id: rand(10), created_at: Time.now, updated_at: Time.now)
end

10.times.each do
  PictureCategory.create(picture_id: rand(10), category_id: rand(10), created_at: Time.now, updated_at: Time.now)
end
