class ServicesController < ApplicationController
 wrap_parameters format:[]

before_action :authorize
skip_before_action :authorize, only: [:list_services]

 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


    

def create
    provider = ServiceProvider.find(session[:provider_id])
    render json: {message: "Unauthorized!"} unless provider.valid?
    service = provider.services.create!(service_params) 
    render json:  {message: "Service successfully created", body: service}

end

def show
    service = find_service 
    render json: service, status: :ok
end

def list_services
    service = Service.all 
    render json: service, status: :ok
end

def update 
    
    service = find_service
    render json: {message: "Service does not exist"} unless service.valid?
    service.update!(service_params)
    render json: {message: "Updated succesfully", body: service}
end


def destroy
    service = find_service
    render json: {message: "Service does not exist"} unless service.valid?
    service.destroy
    render json: {message: "Deleted succesfully"}
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

