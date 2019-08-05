class OrderItemsController < ApplicationController
  def new
    @item = Stock.find(params[:stock])
    @order_item = OrderItem.new
  end

  def create
    order = current_user.order
    stock = Stock.find(params[:order_item][:stock_id])
    order_item = OrderItem.new(quantity: params[:order_item][:quantity])
    
    # create a new order for current user and assign the buyer id in order
    current_user.order.push(order) if current_user.order.nil?
    # add a new order item in the new order and assign the order id in order item
    order.order_items.push(order_item)
    # assign stock id in order item
    stock.order_items.push(order_item)

    if current_user.save && order.save && stock.save && order_item.save
      flash[:notice] = "We have added #{stock.card.title} to your cart"
      redirect_to root_path
    else
      flash[:alert] = "There was a problem creating your order"
    end
  end

  def update
    order_item = OrderItem.find(params[:id])
    order_item.quantity = params[:order_item][:quantity].to_i
    if order_item.save
      flash[:notice] = "Your change has been saved"
      redirect_to orders_path
    else
      flash[:alert] = "There was a problem creating your order"
    end
  end

  def destroy
    order_item = OrderItem.find(params[:id])
    if !order_item || !order_item.destroy || order_item.save
      flash[:alert] = "There was a problem removing your order"
    else
        flash[:alert] = "Your order record has been removed successfully"
    end
    redirect_to orders_path
  end
end
