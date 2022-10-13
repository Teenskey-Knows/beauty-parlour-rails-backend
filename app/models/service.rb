class Service < ApplicationRecord
has_many :bookings ,dependent: :destroy
has_many :service_providers, through: :bookings
#validation
validates :image, presence: true
validates :pricing, presence: true
validates :service_type, presence: true



end
