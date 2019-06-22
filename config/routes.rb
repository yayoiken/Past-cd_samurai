Rails.application.routes.draw do
  devise_for :clients
  resources :clients do
  	get 'withdrawal', on: :member
  	get 'ordered', on: :collection
  end
  resources :products
  devise_for :admins
  root 'home#top'
  namespace :admins do
   resources :products # => /admin/products etc
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
