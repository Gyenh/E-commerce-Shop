Rails.application.routes.draw do
  root 'catalog#index'
  devise_for :users
#rails admin la gem pour créer le dashbord du user admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
#pour mon controller products et pour modifier chaque produits et les montrer sur la home page
  resources :products
#lié au panier et à user devise, sert à créer les commandes et avoir l'historique des utilisateurs
  resources :orders, only: [:index, :new, :create, :show]
#c'est le panier, il est lié à user devise et à product et à line items et sert à créer un panier
  resources :carts, only: [:new, :create, :show, :edit, :update, :destroy]
#def index supprimé pour l'instant
#il sert à mémoriser les produits dans le panier (du current user si log in) de la session en cours
  resources :line_items

  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
