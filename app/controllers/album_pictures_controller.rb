class AlbumPicturesController < ApplicationController

  def index
    album_pictures = AlbumPicture.all
    render json: album_pictures
  end

  def create
    album_picture = AlbumPicture.create(album_id: params[:data][:album_id], picture_id: params[:data][:picture_id])
  end

  def destroy
    album_picture = AlbumPicture.find_by(id: params[:id])
    album_picture.destroy
    render json: album_picture
  end

end
