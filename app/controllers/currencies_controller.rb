class CurrenciesController < ApplicationController
  def index
    @posts = Currency.all.order("created_at DESC")

    render json: @posts
  end

  def show 
    @posts = Currency.find(params[:id])

    render json: @posts
  end
end
