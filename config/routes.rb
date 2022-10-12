Rails.application.routes.draw do

resources :services, only: [:index, :create, :update, :destroy]

resources :service_providers, only: [:index]
#bookings controller
 resources :bookings, only: [:index,:create,:update,:destroy]


end
