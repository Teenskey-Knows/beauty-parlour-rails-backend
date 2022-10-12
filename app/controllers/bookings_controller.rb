class BookingsController < ApplicationController

    wrap_parameters format:[]
    
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_response

rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_response



    def index
        booking = Booking.all
        render json: booking
    end

    def create
        booking = Booking.create!(booking_params)
        render json: booking
    end

    def update

        booking= find_booking
        booking.update!(booking_params)
        render json: booking
    end

    def destroy

        booking= find_booking
        booking.delete
        head :no_content
    end

    private
    def find_booking
        booking = Booking.find(params[:id])

    end

    def booking_params
        params.permit(:id, :client,:service_id,:ServiceProvider_id)
    end

    def record_not_found_response
        render json: {error: "Record not found"},status: :not_found
    end

    def unprocessable_entity_response(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity_response
    end


end
