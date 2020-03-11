Rails.application.routes.draw do
  root :to => 'items#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items do
    resources :prodpicture, only: [:create, :destroy]
  end

  resources :users, only: [:edit, :show]

  # cette route a été crée pour tester Stripe. Il doit être effacé aprés integration.
  resources :charges

end
