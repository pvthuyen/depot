class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
  	def current_cart
  		unless session[:cart_id]
	  		Cart.create.tap { |cart| session[:cart_id] = cart.id }
	  	else
	  		Cart.find_or_create_by(id: session[:cart_id])
	  	end
  	end
end
