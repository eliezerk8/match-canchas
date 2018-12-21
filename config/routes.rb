Rails.application.routes.draw do
  
  get 'informes/index'
  get 'informes/new'
  devise_for :users
  resources :facultads

  resources :estudiantes

  resources :users

  resources :informes
  resources :rols
  
  root to: 'welcome#index'
  resources :carreras
  resources :page
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
