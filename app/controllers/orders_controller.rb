class OrdersController < ApplicationController
  # create a cart for current user if no cart exists
  def index
    if current_user.order.nil?
      current_user.order = Order.new
    end
    # use active record association to access order item informtaion and cart informtaion
    @items = current_user.order.order_items
    @order = current_user.order
    
  end
  
  # checkkout an order item
  def new
    # find the item that needs to checkout
    @order_item = OrderItem.find(params[:id])
    # scale the price and convert to integer
    amount = (@order_item.stock.price * 100).to_i
    # assign stripe private key
    Stripe.api_key = 'sk_test_BztZIujirr4E9sQQicdgOJt100RlAKnSrd'
    # create one time checkout session
    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: 
    [{
    name: 'Magic cards',
    description: @order_item.stock.card.title,
    images: ['https://example.com/t-shirt.png'],
    amount: amount,
    currency: 'aud',
    quantity: @order_item.quantity, 
    }],
    success_url: orders_new_complete_url(id: @order_item.id),
    cancel_url: 'http://localhost:3000/orders/new/cancel',
    )
  end

  # Destroy paid order item from cart
  def complete
    # find paid order item
    order_item = OrderItem.find(params[:id])
    # deduct the sold quantity from stock
    order_item.stock.quantity -= order_item.quantity
    # if the stock is sold out, delete that stock
    if order_item.stock.quantity == 0
      order_item.stock.destroy
    end
    # check if changes are saved successfully
    if !order_item || !order_item.destroy || order_item.save || order_item.stock.save
      flash[:alert] = "There was a problem removing your order"
    else
      flash[:notice] =  "Your order item is successfully paid, it is removed from cart now"
    end
  end
end
