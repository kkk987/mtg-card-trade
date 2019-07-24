Rails.application.routes.draw do
  get 'sellers/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "trade#index"
  resource :sellers, only: [:index, :create, :destroy]
end
