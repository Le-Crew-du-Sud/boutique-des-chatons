Rails.application.routes.draw do
  # get 'carts/create'
  # get 'carts/show'
  # get 'carts/edit'
  # get 'carts/destroy'
  # get 'categories/show'
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

  resources :carts, only: [:create, :show, :edit, :destroy]

end
