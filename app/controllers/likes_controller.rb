class LikesController < ApplicationController
  def index
    likes = Like.all
    render json: likes
  end
  
  def show
    like = Like.find(:id)
    render json: like
  end

  def create
    like = Like.create(photographer_id: params[:photographer_id], picture_id: params[:picture_id])
    render json: like
  end

  def destroy
    like = Like.find_by(id: params[:id])
    like.destroy
    render json: like
  end 
end
