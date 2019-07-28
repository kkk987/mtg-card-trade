class SellersController < ApplicationController
  def index
    @seller = Seller.new
  end

  def create
    seller = Seller.create_seller(current_user.id, params[:seller][:registered])
    redirect_to root_path
  end
end
