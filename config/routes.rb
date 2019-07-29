Rails.application.routes.draw do
  # get 'stocks/index'
  # get 'cards/index'
  # get 'sellers/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "trades#index"
  resources :trades, only: [:edit, :update]
  resources :cards, only: [:index]
  resources :stocks, only: [:index]
end
