class TradesController < ApplicationController
    def index
    end

    def edit
        @seller = User.find(current_user.id)
    end

    def update
        seller = User.register_seller(User.find(current_user.id), params[:user][:registered].to_i)
        if seller
            flash[:alert] = "Your changes have been saved"
        else
            flash[:alert] = "There was an error with your change"
        end
        redirect_to root_path
    end
end
