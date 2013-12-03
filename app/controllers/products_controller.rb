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
    @categories = Category.all
    @products = Product.where("name LIKE ?", "%#{params[:keywords]}%")

  end 

end
