class PhotographerSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :image, :id, :name, :birthdate, :bio, :start_date, :city

  def image
      rails_blob_path(object.image, only_path: true) if object.image.attached?
  end
  #
  #
  # def initialize(photographer_object)
  #   @photographer = photographer_object
  # end
  #
  # def to_serialized_json
  #   @photographer.to_json(:include => {
  #     :pictures => {:only => [:id, :name, :description]},
  #     :albums => {:only => [:id, :name, :description]}
  #   }, :except => [:updated_at, :created_at])
  # end

end
