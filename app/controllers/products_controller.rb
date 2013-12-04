class ProductsController < ApplicationController

  def index
  	@products = Product.all
    @categories = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  def search_results
  	# Here we will be using the product model to actually search
    # @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")
    @categories = Category.all
    @products = Product.where("name LIKE '%#{params[:keywords]}%' AND category_id = #{params[:category_search]}")
  end 

  def checkout 
    # @line_items = Line_items.new 

    # @line_items.name = product.name
    # @line_items.quantity = params[:quantity]
    # @line_items.price = product.price

    # @line_items.save

  end 

end
