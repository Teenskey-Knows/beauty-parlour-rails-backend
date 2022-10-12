class Service < ApplicationRecord
has_many :bookings
has_many :service_providers, through: :bookings
end
