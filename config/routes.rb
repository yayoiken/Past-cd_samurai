Rails.application.routes.draw do
  root 'home#top'
  devise_for :clients
  resources :clients do
    get 'withdrawal', on: :member
    get 'ordered', on: :collection
  end
  resources :addresses, only: [:new,:create,:edit,:update,:destroy]
  resources :carts, only: [:index,:create,:update,:destroy]
  resources :orders, only: [:new,:create] do
    resources :order_products, only: [:new,:create,:show]
  end
  devise_for :admins
  namespace :admins do
   resources :products # => /admin/products etc
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
