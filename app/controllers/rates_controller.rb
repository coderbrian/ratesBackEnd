class RatesController < ApplicationController
  def index
    @posts = Rate.all.order("created_at DESC")

    render json: @posts
  end

  def show 
    @posts = Rate.find(params[:id])

    render json: @posts
  end 
end
