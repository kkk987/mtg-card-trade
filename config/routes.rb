Rails.application.routes.draw do
  # get 'stocks/index'
  # get 'cards/index'
  # get 'sellers/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
  root to: "trades#index"
  resources :trades, only: [:edit, :update]
  get "/trades/show", to: "trades#show"
  resources :cards, only: [:index, :new, :edit, :show]
  resources :stocks, only: [:index, :new, :create, :edit, :update]
  delete "/stocks/:id", to: "stocks#destroy", as: "delete_stock"
  resources :order_items, only: [:show, :new, :create, :update]
  delete "/order_items/:id", to: "order_items#destroy", as: "delete_order_item"
  resources :orders, only: [:index, :new]
  get "/orders/new/complete", to: "orders#complete"
end
