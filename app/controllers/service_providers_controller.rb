class ServiceProvidersController < ApplicationController

     def index
        service = ServiceProvider.all 
        render json: service 
    end
    
end
