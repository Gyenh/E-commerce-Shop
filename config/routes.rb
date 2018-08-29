Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :orders
  resources :line_items
  resources :carts
  resources :products
  resources :charges
  root 'catalog#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
