class ServicesController < ApplicationController

    def index
        service = Service.all 
        render json: service 
    end
def create
    service = Service.create!(service_params)
    render json: service, status: :created
end

private

def service_params
    params.permit(:service_type, :pricing, :image)
end

end
