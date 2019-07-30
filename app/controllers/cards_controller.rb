class CardsController < ApplicationController

    def index
    end

    def face
    @card.face.attach(params[:card] [:face])
    end

end
