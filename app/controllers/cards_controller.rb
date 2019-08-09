class CardsController < ApplicationController
    # List all cards in database
    def index
        @cards = Card.all
    end

    # Show a particular card
    def show
        @cards = Card.find(params[:id])
    end

    # Show cover of the card
    def face
    @card.face.attach(params[:card] [:face])
    end

end
