class ServicesController < ApplicationController

    def index
        service = Service.all 
        render json: service 
    end
def create
    service = Service.create!(service_params)
    render json: service, status: :created
end
def update 
    service = find_service
    service.update (service_params)
    render json: service
end

private

def find_service
    Service.find(params[:id])
end

def service_params
    params.permit(:service_type, :pricing, :image)
end

end
