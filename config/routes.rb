Rails.application.routes.draw do
  resources :cryptos
  devise_for :users
  root 'home#index'
  get 'home/about' ,to: 'home#about'
  get 'home/lookup', to: 'home#lookup'
  post 'home/lookup',to: 'home#lookup'

  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
