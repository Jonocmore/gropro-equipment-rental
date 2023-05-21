Rails.application.routes.draw do
  devise_for :users
  root to: "equipments#index"
  resources :equipments do
    resources :rentals, only: [:new, :create]
  end
  resources :rentals, only: [:edit, :update] do
    member do
      get :dashboard
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
