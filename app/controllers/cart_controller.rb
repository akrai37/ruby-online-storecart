class CartController < ApplicationController
  def show
    cart = current_cart
    @cart_items = []
    
    cart.each do |product_id, quantity|
      product = Product.find_by(id: product_id)
      if product
        @cart_items << { product: product, quantity: quantity }
      else
        # Remove invalid product from cart
        cart.delete(product_id)
      end
    end
    
    session[:cart] = cart
    @total = @cart_items.sum { |item| item[:product].price * item[:quantity] }
  end
  
  def add
    product = Product.find(params[:id])
    cart = current_cart
    cart[product.id.to_s] ||= 0
    cart[product.id.to_s] += 1
    session[:cart] = cart
    
    redirect_to products_path, notice: "#{product.name} added to cart!"
  end
  
  def remove
    cart = current_cart
    cart.delete(params[:id])
    session[:cart] = cart
    
    redirect_to cart_path, notice: "Item removed from cart"
  end
  
  def clear
    session[:cart] = {}
    redirect_to cart_path, notice: "Cart cleared"
  end
end
