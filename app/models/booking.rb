class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :ServiceProvider

  #validations

  validates :client , presence: true
  validates :service_id, presence: true
  validates :ServiceProvider_id, presence: true


  
end
