Rails.application.routes.draw do
  devise_for :clients, controllers: {
    :regisration => 'clients/regisration',
    :sessions => 'clients/sessions'
}
  resources :clients do
  	get 'withdrawal', on: :member
  	get 'ordered', on: :collection
  end
  resources :products
  devise_for :admins, controllers: {
    :sessions => 'admins/sessions'
}
  namespace :admins do
   get '/' => 'products#index'
   resources :products
   resources :clients
  end

  root 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
