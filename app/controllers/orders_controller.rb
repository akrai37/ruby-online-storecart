class OrdersController < ApplicationController
  def new
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
    
    if @cart_items.empty?
      redirect_to products_path, alert: "Your cart is empty"
      return
    end
    
    @total = @cart_items.sum { |item| item[:product].price * item[:quantity] }
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    @order.items_json = session[:cart].to_json
    
    # Calculate total
    cart = current_cart
    cart_items = []
    
    cart.each do |product_id, quantity|
      product = Product.find_by(id: product_id)
      if product
        cart_items << { product: product, quantity: quantity }
      end
    end
    
    if cart_items.empty?
      redirect_to products_path, alert: "Your cart is empty"
      return
    end
    
    @order.total = cart_items.sum { |item| item[:product].price * item[:quantity] }
    
    if @order.save
      session[:cart] = {}
      redirect_to order_path(@order), notice: "Order placed successfully!"
    else
      @cart_items = cart_items
      @total = @order.total
      render :new
    end
  end
  
  def show
    @order = Order.find(params[:id])
    @items = JSON.parse(@order.items_json).map do |product_id, quantity|
      product = Product.find(product_id)
      { product: product, quantity: quantity }
    end
  end
  
  private
  
  def order_params
    params.require(:order).permit(:customer_name, :customer_email, :customer_address)
  end
end
