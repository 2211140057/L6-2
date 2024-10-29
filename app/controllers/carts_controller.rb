class CartsController < ApplicationController
  def show
    @cartitems = CartItem.where(cart_id: current_cart.id)
    @total_amount = @cartitems.sum { |item| Product.find(item.product_id).price * item.qty }
  end
end
