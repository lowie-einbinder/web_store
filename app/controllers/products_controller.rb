class ProductsController < ApplicationController

    def index
        @products = Product.all
      end

  def show
    @product = Product.find(params[:id])
  end

  def new
  end

  def new
    @product = Product.new
  end

  def create
    # make a new product with what product_params returns (which is a method we're calling)
    @product = Product.new(product_params)
    if @product.save
      # if the save for the product was successful, go to show.html.erb
      redirect_to product_url(@product)
    else
      # otherwise render the view associated with the action :new (i.e. new.html.erb)
      render :new
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price, :url)
  end
end