# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
photographer1 = Photographer.create(name: "Jack", birthdate: "1990-12-08", bio: "aaaaaaaaaaaaaaaaaaaaaaa", city: "Chicago", start_date: "2016-10-20")
photographer2 = Photographer.create(name: "Avi", birthdate: "1989-06-22", bio: "bbbbbaaaaababaabababbaba", city: "Dallas", start_date: "2018-12-12")

picture1 = Picture.create(name: "Nature", description: "bbbbbbbbbbbbbbbbbbb", photographer_id: photographer1.id)
picture2 = Picture.create(name: "Street", description: "ccccccccccccccccccc", photographer_id: photographer1.id)


album1 = Album.create(name: "album1", description: "sssssssssssssss", photographer_id: photographer1.id)

album_photo1 = AlbumPicture.create(album_id: album1.id, picture_id: picture1.id)

category1 = Category.create(name: "Street Photography")

picture_category1 = PictureCategory.create(picture_id: picture2.id, category_id: category1.id)