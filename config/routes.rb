Rails.application.routes.draw do
  get 'animals/index'
  get 'animals/show'
  get 'animals/new'
  get 'animals/create'
  get 'animals/edit'
  get 'animals/update'
  get 'animals/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :animals, only: [:show, :index, :new, :create]  do
    resources :bookings, only: [:new, :create]
  end
  get '/my_bookings', to: 'bookings#my_bookings'
  get '/my_owner_bookings', to: 'bookings#my_owner_bookings'
  get '/my_animals', to: 'animals#my_animals'

end
