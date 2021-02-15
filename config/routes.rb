Rails.application.routes.draw do
  resources :users, only: %i(create, index)
  resources :customers, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
