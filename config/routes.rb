Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :furnitures do
    resources :bookings
  end

  delete '/furnitures/:id', to 'furnitures#destroy', as: 'furniture'

end
