class ProductsController < ApplicationController
  def one_product_method
    @product = Product.first
    render template: "products/show"
  end

  def all_products_method
    @products = Product.all
    render template: "products/index"
  end
end
