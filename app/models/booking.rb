class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :service_provider

  #validations

  # validates :client , presence: true
  validates :service_id, presence: true
  validates :service_provider_id, presence: true
  # validates :date, presence: true



end
