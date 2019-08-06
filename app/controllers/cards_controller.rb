class CardsController < ApplicationController
    
    def index
        @cards = Card.all
    end

    def show
        @cards = Card.find(params[:id])
    end

    def face
        @card.face.attach(params[:card] [:face])
    end

end
