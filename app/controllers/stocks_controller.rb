class StocksController < ApplicationController
  def index
    @stock = Stock.sort_my_stock(current_user.id)
  end

  def new
    @stock = Stock.new
    respond_to do |format|
      format.html
      format.json {
        @card = Card.search(params[:term])
        render json:@card.map(&:title).uniq
    }
    end
  end
  def create
    # title, user_id, condition, price, quantity
    # info = params[:stock]
    card_id = Card.return_card_id(params[:stock][:card][:title])
    stock = Stock.create_stock(card_id, current_user.id, params[:stock][:condition], params[:stock][:price], params[:stock][:quantity])
    # byebug
    if stock
      flash[:alert] = "Your changes have been saved"
      redirect_to stocks_path
    else
      flash[:alert] = "There is a problem with your changes"
      render 'new'
    end
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def update
    stock = Stock.update_my_stock(params[:id], params[:stock][:card][:title],params[:stock][:condition], params[:stock][:price], params[:stock][:quantity])

    if stock.save
      flash[:alert] = "Your changes have been saved"
    else
      flash[:alert] = "There was an error with your change"
    end
    redirect_to stocks_path
  end

  def destroy
    
    stock = Stock.find(params[:id])
    if !stock || !stock.destroy || stock.save
      (flash[:alert] = "Cannot find your stock")

    else
        flash[:alert] = "Your stock record has been removed successfully"
    end
    redirect_to stocks_path
  end
end
