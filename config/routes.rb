Rails.application.routes.draw do
  root 'products#index'
  
  # Product routes
  resources :products, only: [:index, :show] do
    collection do
      get 'search'
    end
  end
  
  # Cart routes
  post 'cart/add/:id', to: 'cart#add', as: 'add_to_cart'
  get 'cart', to: 'cart#show'
  delete 'cart/remove/:id', to: 'cart#remove', as: 'remove_from_cart'
  delete 'cart/clear', to: 'cart#clear', as: 'clear_cart'
  
  # Order routes
  get 'checkout', to: 'orders#new', as: 'checkout'
  post 'orders', to: 'orders#create'
  get 'orders/:id', to: 'orders#show', as: 'order'
  
  # Admin routes
  namespace :admin do
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    resources :products
    get 'dashboard', to: 'products#index'
  end
end
