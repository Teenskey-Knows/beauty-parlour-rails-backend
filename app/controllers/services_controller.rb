class ServicesController < ApplicationController
 wrap_parameters format:[]

 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

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
    service.update!(service_params)
    render json: service
end
def destroy
    service = find_service
    service.destroy
    head:no_content
end

private

def find_service
    service = Service.find(params[:id])
end

def service_params
    params.permit(:service_type, :pricing, :image)
end

def render_not_found_response
    render json: { error: "Service not found" }, status: :not_found
end

def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity 
end 
end
