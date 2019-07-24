class SellersController < ApplicationController
  def index
    @seller = Seller.new
  end
end
