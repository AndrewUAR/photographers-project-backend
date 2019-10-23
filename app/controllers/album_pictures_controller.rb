class AlbumPicturesController < ApplicationController
  def create
    puts params[:data][:ablum_id]
    puts params[:data][:picture_id]
    album_picture = AlbumPicture.create(album_id: params[:data][:album_id], picture_id: params[:data][:picture_id])
  end
end
