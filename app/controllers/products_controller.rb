class ProductsController < ApplicationController
  

  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    if @product.save 
      flash[:success] = "Product Created"
      redirect_to root_path
    else
      flash[:error] ="nope"
      render 'new'
    end
  end


  private
    def product_params
      params.require(:product).permit(:image_path, :name, :image, :description)
    end

end
