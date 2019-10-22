class PicturesController < ApplicationController
  def index
    pictures = Picture.all
    render json: pictures
  end

  def create
    picture = Picture.new(name: params[:name], description: params[:description], photographer_id: params[:photographer_id])
    image = params[:picture]
    puts image
    puts "*************************************"
    picture.image.attach(image)
    picture.save
    url = url_for(picture.image)
    render json: {image: url}
  end
end
