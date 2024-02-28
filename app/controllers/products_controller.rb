class ProductsController < ApplicationController
  def one_product_method
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def all_products_method
    @products = Product.all
    render :index
  end
end
