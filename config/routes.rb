Rails.application.routes.draw do
  root to: 'animals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/' to: 'animals#index'

  get '/animals/new' to: 'animals#new'
  post '/animals/new' to: 'animals/create'

  get '/animals/:id/edit', to: 'animals#edit', as: :edit_animal
  patch '/animals/:id', to: 'animals#update'

  get '/animals/:id' to: 'animals#show' as: :animals
  delete '/animals/:id', to: 'animals#destroy'


  get '/bookings' to: 'bookings#my_bookings'
  get '/bookings/new' to: 'bookings#new'

  delete '/bookings' to: 'bookings#destroy'

  get '/owner_bookings' to: 'bookings#my_owner_bookings'
  get '/my_animals' to: 'animals#my_animals'    nested dans user
end
