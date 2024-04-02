class CartedProductsController < ApplicationController
  def create
    @carted_product = Carted_product.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: nil[:order_id],
      status: params[:status],
    )
  end
end
