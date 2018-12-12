class CurrenciesController < ApplicationController
  def index
  	@x = Currency.all.order("created_at DESC")
  end
end
