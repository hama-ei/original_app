class ImagesController < ApplicationController

  def index
    @images = Image.order("date DESC")
  end

  def show
    @image = Image.find(params[:id])
    @like = Like.new
  end

  private
  def image_params
    params.require(:image).permit(:image,:user_id)
  end
end