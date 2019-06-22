Rails.application.routes.draw do
  devise_for :admins
  root 'home#top'
  namespace :admin do
   resources :products # => /admin/products etc
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
