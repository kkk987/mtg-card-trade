class OrderItemsController < ApplicationController
  # Find the corresponding stock
  # And create a new OrderItem object
  def new
    @item = Stock.find(params[:stock])
    @order_item = OrderItem.new
  end

  # If current user doesn't have a cart, create a new one
  def create
    if current_user.order.nil?
      current_user.order = Order.new
    end

    order = current_user.order
    # find corresponding stock
    stock = Stock.find(params[:order_item][:stock_id])
    # assign order item quantity
    order_item = OrderItem.new(quantity: params[:order_item][:quantity])
    
    # add a new order item in the new order and assign the order id in order item
    order.order_items.push(order_item)
    # assign stock id in order item
    stock.order_items.push(order_item)

    # save changes in current user, order table, stock table and order_item table
    # redirect to cart page on success
    # otherwise, show error message
    if current_user.save && order.save && stock.save && order_item.save
      flash[:notice] = "We have added #{stock.card.title} to your cart"
      redirect_to orders_path
    else
      flash[:alert] = "There was a problem creating your order"
    end
  end

  # update the order item information
  # redirect to cart page on success
  # otherwise, show error message
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

  # Delete an order item
  # redirect to cart page on success and failure
  # show error message when rails fails to delete the order item
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
