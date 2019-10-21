class CreateAlbumPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :album_pictures do |t|
      t.references :album, null: false, foreign_key: true
      t.references :picture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
