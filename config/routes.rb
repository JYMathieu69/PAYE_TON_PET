Rails.application.routes.draw do
  root to: 'animals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals
  resources :bookings, only: [:my_booking, :new, :create, :destroy]

  get '/owner_bookings', to: 'bookings#my_owner_bookings'
  get '/my_animals', to: 'animals#my_animals'    #nested dans user ??

end
