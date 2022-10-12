Rails.application.routes.draw do

resources :services, only: [:index, :create, :update, :destroy]


#bookings controller
 resources :bookings, only: [:index,:create,:update,:destroy]


end
