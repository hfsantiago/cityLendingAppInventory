Rails.application.routes.draw do
  resources :working_order_purchase_elements
  resources :working_order_activities
  resources :working_orders
  resources :delivery_collect_record_assets, only: [:index, :create]
  resources :equipments
  resources :asset_types
  resources :employees do
    resources :delivery_collect_records
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
