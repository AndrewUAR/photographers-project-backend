class AlbumsController < ApplicationController
  def index
    albums = Album.all
    render json: albums
  end

  def show
    album = Album.find_by(id: params[:id])
    render json: album
  end

  def create
    album = Album.new(name: params[:name], description: params[:description], photographer_id: params[:photographer_id])
    album.save
    render json: album
  end

  def update
    album = Album.find_by(id: params[:id])
    album.update(name: params[:name], description: params[:description])
    render json: album
  end

  def destroy
    album = Album.find_by(id: params[:id])
    album.destroy
    render json: album
  end

  def add_photo_to_album

  end
end
