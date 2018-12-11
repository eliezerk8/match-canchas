Rails.application.routes.draw do
  
  devise_for :users
  resources :facultads

  resources :estudiante

  resources :user

  
  root to: 'page#index'
  resources :carreras
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
