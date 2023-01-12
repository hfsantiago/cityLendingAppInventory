Rails.application.routes.draw do
  resources :working_order_purchase_elements
  resources :working_order_activities
  resources :working_orders
  resources :delivery_collect_record_assets, only: [:index, :create]
  resources :assets
  resources :asset_types
  resources :delivery_collect_records
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
