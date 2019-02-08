Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'

  resources "reservations"

  #get '/reservations/rates', to: 'reservations#rates', as: 'reservation_rates'

  get 'rates', action: :rates, controller: 'reservations'
end
