Rails.application.routes.draw do
  get 'categories/show'
  root :to => 'items#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items
  resources :categories, only: [:show]
  resources :users, only: [:edit, :show]
end
