class PicturesController < ApplicationController
  def index
    pictures = Picture.all
    render json: pictures
  end

  def create
    picture = Picture.new(name: params[:name], description: params[:description], photographer_id: params[:photographer_id])
    image = params[:picture]
    picture.image.attach(image)
    picture.save
    render json: picture
  end

  def show
    picture = Picture.find_by(id: params[:id])
    render json: picture
  end

  def update
    picture = Picture.find_by(id: params[:id])
    picture.assign_attributes(name: params[:name], description: params[:description])
    image = params[:picture]
    picture.image.attach(image)
    picture.save
    render json: picture
  end

  def destroy
    picture = Picture.find_by(id: params[:id])
    picture.destroy
    render json: picture
  end
end
