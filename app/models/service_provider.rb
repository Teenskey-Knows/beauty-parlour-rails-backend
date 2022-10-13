class ServiceProvider < ApplicationRecord
    has_many :bookings, dependent: :destroy
    has_many :services, through: :bookings
    
    validates :name, presence: true
    validates :gender, presence: true
    validates :email, uniqueness: true

    #has_secure_password
    has_secure_password

end
