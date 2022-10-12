class ServicesController < ApplicationController

    def index
        service = Service.all 
        render json: service 
    end

end
