class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def search
    @query = params[:q]
    @products = Product.search(@query)
    render :index
  end
end
