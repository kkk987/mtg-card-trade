class OrdersController < ApplicationController
  def index
    @items = current_user.order.order_items
    @total = Order.total(@items)
    @order = current_user.order
  end

end
