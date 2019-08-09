class TradesController < ApplicationController
    # display the homepage with autocomplete feature embeded in search bar
    def index
        @stock = Stock.new
        respond_to do |format|
          format.html
          format.json {
            @card = Card.search(params[:term])
            render json:@card.map(&:title).uniq
        }
        end
    end

    # find current user id
    def edit
        @seller = User.find(current_user.id)
    end

    # register/unregister current user as a seller
    # redirect to home page when changes are saved successfully
    # otherwise, show error message
    def update
        seller = User.register_seller(User.find(current_user.id), params[:user][:registered].to_i)
    
        if seller
            flash[:alert] = "Your changes have been saved"
        else
            flash[:alert] = "There was an error with your change"
        end
        redirect_to root_path
    end

    # display market page, find all stocks that matches user input
    def show
        @cards = Card.where("title = ?", params[:card][:title]).first
    end
end
