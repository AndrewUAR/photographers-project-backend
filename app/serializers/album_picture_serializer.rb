class AlbumPictureSerializer < ActiveModel::Serializer
  attributes :id, :album_id, :picture_id
end
