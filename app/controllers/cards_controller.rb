class CardsController < ApplicationController
    
    def face
    @card.face.attach(params[:card] [:face])
    end
    
    def index
    end


end
