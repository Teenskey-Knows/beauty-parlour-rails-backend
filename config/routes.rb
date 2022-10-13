Rails.application.routes.draw do
#service controller

post "/services", to: "services#create"

get "/services/:id", to: "services#show"

get "/services", to: "services#list_services"

put "/services/:id", to: "services#update"

delete "/services/:id", to: "services#destroy"

#service_provider controller

# resources :service_providers, only: [:index, :create, :destroy]

post '/serviceprovider/register', to: "service_providers#create_account"

post '/serviceprovider/login', to: "service_providers#login_account"

delete '/serviceprovider/logout', to: "service_providers#logout_account"

#bookings controller
 resources :bookings, only: [:index,:create,:update,:destroy]


end
