class WelcomeController < ApplicationController

    def index
        render json: welcome
    end

end