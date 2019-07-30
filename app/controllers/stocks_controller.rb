class StocksController < ApplicationController
  def index
    
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
    # @card = Card.search(params[:term])
    # render json:@card.map(&:title).uniq
  end
end
