class ApplicationController < ActionController::API
    include ActionController::Cookies

    def authorize
        render json: {message: "Access Denied!"} unless session.include? :provider_id
    end
end
