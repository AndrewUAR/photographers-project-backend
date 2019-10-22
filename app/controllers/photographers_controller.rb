class PhotographersController < ApplicationController

  def index
    photographers = Photographer.all
    render json: PhotographerSerializer.new(photographers).to_serialized_json

  end

  def show
    photographer = Photographer.find_by(id: params[:id])
    render json: PhotographerSerializer.new(photographer).to_serialized_json
  end
end
