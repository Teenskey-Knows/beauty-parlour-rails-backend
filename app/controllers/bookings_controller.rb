class BookingsController < ApplicationController


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


end
