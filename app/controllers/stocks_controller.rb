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
    card_id = Card.return_card_id(params[:stock][:title][:title])
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
end
