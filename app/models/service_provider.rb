class ServiceProvider < ApplicationRecord
    has_many :bookings
    has_many :services, through: :bookings
end
