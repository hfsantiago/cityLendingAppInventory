Rails.application.routes.draw do
  resources :assets
  resources :asset_types
  resources :delivery_collect_records
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
