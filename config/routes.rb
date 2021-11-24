Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy]
  get 'allmycars', to: 'cars#mycars'
  get 'allmybookings', to: 'bookings#my_bookings'
  get 'allmycars', to: 'cars#mycars'
end
