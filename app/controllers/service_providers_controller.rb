class ServiceProvidersController < ApplicationController

    wrap_parameters format:[]

 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
 rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response


    def create_account
        provider = ServiceProvider.create(service_provider_params)
        if provider.valid?
            create_provider_session(provider.id)
            render json: {
                message: "Account successfully created",
                data: provider
            },status: :created

            else 
                render json: {
                    message: "Invalid input",
                    data: provider.errors.full_messages
                }
            end


    end


    def login_account
        provider = ServiceProvider.find_by(email: params[:email])
        if provider&.authenticate(params[:password])
            create_provider_session(provider.id)
            render json: {message: "Login successful", data: provider},status: :ok
        else
            render json: {message: "Invalid email or password"},status: 401
        end
    end

    def logout_account
        delete_provider_session
        render json: {
            message: "Log out successful"
        },status: :ok

    end

private

def find_service_provider
    ServiceProvider.find(params[:id])
end

def create_provider_session provider_id
    session[:provider_id] ||= provider_id
end

def service_provider_params
    params.permit(:name, :gender,:email,:password)
end

def delete_provider_session
    session.delete :provider_id
end

def render_not_found_response
    render json: { error: "Service_provider not found" }, status: :not_found
end

def render_unprocessable_entity_response(exception)
    render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity 
end
end
