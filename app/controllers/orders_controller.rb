class OrdersController < ApplicationController
  def index
    @items = current_user.order.order_items
    @order = current_user.order
    
  end
  
  def new
    @order_item = OrderItem.find(params[:id])
    amount = (@order_item.stock.price * 100).to_i
    Stripe.api_key = 'sk_test_BztZIujirr4E9sQQicdgOJt100RlAKnSrd'
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
    success_url: 'http://localhost:3000/orders/new/complete',
    cancel_url: 'http://localhost:3000/orders/new/cancel',
    )
  end

  def complete
    
  end
end
