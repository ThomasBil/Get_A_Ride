Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :cars
  get 'allmycars', to: 'cars#mycars'
end
