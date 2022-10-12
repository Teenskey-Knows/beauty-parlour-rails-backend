Rails.application.routes.draw do

#bookings controller
 resources :bookings, only: [:index,:create,:update,:destroy]

end
