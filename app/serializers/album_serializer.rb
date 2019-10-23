class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :photographer_id
end
