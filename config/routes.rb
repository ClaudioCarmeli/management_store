Rails.application.routes.draw do
  root 'products#index'

  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"
  
  post 'tems/:id/add' => "items#add_quantity", as: "item_add"
  post 'items/:id/reduce' => "items#reduce_quantity", as: "item_reduce"
  post 'items' => "items#create"
  get 'items/:id' => "items#show", as: "item"
  delete 'items/:id' => "_items#destroy"

  resources :products
  resources :orders
  resources :carts
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
