Rails.application.routes.draw do
  devise_for :users
  resources :stores do
    resources :products
  end
  
  root "stores#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
