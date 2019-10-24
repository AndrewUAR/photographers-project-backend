class PictureSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers

    attributes :image, :id, :name, :description, :photographer_id, :albums

    def image
        rails_blob_path(object.image, only_path: true) if object.image.attached?
    end

end
