class StocksController < ApplicationController
  # show stock in sorted order
  def index
    @stock = Stock.sort_my_stock(current_user.id)
  end

  # this part uses jquery to autocomplete card title
  # for example, if user entered 'a', it will show a list of card titles that contains 'a'
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

  # create a new stock
  # redirect to stock page when changes are saved
  # otherwise, show error message
  def create
    card_id = Card.return_card_id(params[:stock][:card][:title])
    stock = Stock.create_stock(card_id, current_user.id, params[:stock][:condition], params[:stock][:price], params[:stock][:quantity])
    if stock
      flash[:alert] = "Your changes have been saved"
      redirect_to stocks_path
    else
      flash[:alert] = "There is a problem with your changes"
      render 'new'
    end
  end

  # show a particular stock
  def edit
    @stock = Stock.find(params[:id])
  end

  # update a particular stock
  # redirect to stock page when changes are saved successfully
  # otherwise, show error message
  def update
    stock = Stock.update_my_stock(params[:id], params[:stock][:card][:title],params[:stock][:condition], params[:stock][:price], params[:stock][:quantity])

    if stock.save
      flash[:alert] = "Your changes have been saved"
    else
      flash[:alert] = "There was an error with your change"
    end
    redirect_to stocks_path
  end

  # destroy a stock record
  # redirect to stock page when changes are saved successfully
  # otherwise, show error message
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
