Rails.application.routes.draw do
  
  get 'informes/index'
  get 'informes/new'
  devise_for :users
  resources :facultads

  resources :estudiantes

  resources :users

  resources :informes

  
  root to: 'page#index'
  resources :carreras
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
