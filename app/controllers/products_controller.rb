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
    session[:line_item_ids] ||= []

    if request.post?
      product = Product.find(params[:product_id]) 
      line_item = LineItem.new
      line_item.product_id = product.id


      line_item.quantity = params[:quantity]
      line_item.price = product.price

      line_item.save

      session[:line_item_ids] << line_item.id
    end

    @line_items = LineItem.find(session[:line_item_ids])
    
  end

end
