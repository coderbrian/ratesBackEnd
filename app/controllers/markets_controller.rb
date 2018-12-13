class MarketsController < ApplicationController
  def index
    @posts = Market.all.order("created_at DESC")

    render json: @posts
  end

  def show 
    @posts = Market.find(params[:id])

    render json: @posts
  end 
end
