class ServiceProvidersController < ApplicationController

    wrap_parameters format:[]

 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


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

def render_not_found_response
    render json: { error: "Service_provider not found" }, status: :not_found
end

def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity 
end
end
