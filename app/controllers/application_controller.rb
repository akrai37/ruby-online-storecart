class ApplicationController < ActionController::Base
  helper_method :current_cart, :cart_count
  
  private
  
  def current_cart
    session[:cart] ||= {}
  end
  
  def cart_count
    current_cart.values.sum
  end
end
