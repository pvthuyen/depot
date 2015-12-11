class StoreController < ApplicationController
  def index
  	@products = Product.all
  	unless session[:counter]
  		session[:counter] = 0
  	end
  	session[:counter] += 1
  	@cart = current_cart
  end
end
