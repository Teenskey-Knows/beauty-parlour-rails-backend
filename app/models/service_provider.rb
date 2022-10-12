class ServiceProvider < ApplicationRecord
    has_many :bookings
    has_many :services, through: :bookings
    
    validates :name, presence: true
    validates :gender, presence: true

end
