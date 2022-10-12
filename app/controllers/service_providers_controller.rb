class ServiceProvidersController < ApplicationController

     def index
        service_provider = ServiceProvider.all 
        render json: service_provider 
    end
    def create

    service_provider = ServiceProvider.create!(service_provider_params)
    render json: service_provider, status: :created
end
def destroy
    service_provider = find_service_provider
    service_provider.destroy
    head:no_content
end
private

def find_service_provider
    ServiceProvider.find(params[:id])
end

def service_provider_params
    params.permit(:name, :gender)
end


end
