class PhotographersController < ApplicationController

  def index
    photographers = Photographer.all
    render json: photographers
    # render json: PhotographerSerializer.new(photographers).to_serialized_json

  end

  def show
    photographer = Photographer.find_by(id: params[:id])
    render json: photographer
    # render json: PhotographerSerializer.new(photographer).to_serialized_json
  end

  def update
    photographer = Photographer.find_by(id: params[:id])
    photographer.assign_attributes(name: params[:name], birthdate: params[:birthdate], bio: params[:bio], start_date: params[:start_date], city: params[:city])
    image = params[:image]
    photographer.image.attach(image)
    photographer.save
    render json: photographer
  end

  def post_params
    params.require(:post).permit(:name, :birthdate, :bio, :start_date, :city, :image)
  end

end
