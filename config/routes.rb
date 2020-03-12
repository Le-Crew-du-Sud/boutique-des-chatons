Rails.application.routes.draw do
  get 'categories/show'
  root :to => 'items#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
    resources :itempicture, only: [:create, :destroy]
  end

  resources :categories, only: [:show]

  resources :users, only: [:edit, :show]

  # cette route a été crée pour tester Stripe. Il doit être effacé aprés integration.
  resources :charges

  namespace :admin do
    root to: 'admin#index'
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :orders, only: [:index]
  end

end
