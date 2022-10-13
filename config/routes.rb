Rails.application.routes.draw do
#service controller
resources :services, only: [:index, :create, :update, :destroy]
#service_provider controller
# resources :service_providers, only: [:index, :create, :destroy]

post '/serviceprovider/register', to: "service_providers#create_account"

post '/serviceprovider/login', to: "service_providers#login_account"

delete '/serviceprovider/logout', to: "service_providers#logout_account"

#bookings controller
 resources :bookings, only: [:index,:create,:update,:destroy]


end
