Rails.application.routes.draw do
 
  
  resources :carts
  resources :coupons
  resources :categories
  resources :brands
  resources :products
  resources :stores
  get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  
  
  
  
  
  
  
  
  
  
  resources :orders 
  resources :order_products 
  
  resources :shopping_carts  do
    end


end
