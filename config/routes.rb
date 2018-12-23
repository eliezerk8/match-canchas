Rails.application.routes.draw do
  
  get 'informes/index'
  get 'informes/new'
  #devise_for :users
  resources :facultads

  resources :estudiantes
  #resources :users

  resources :informes
  resources :rols
  
  root to: 'welcome#index'
  resources :carreras
  resources :page

 
  devise_for :users, :path_prefix => 'my', :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/session#new'
  end
  resources :users

  delete 'users/:id/edit', to: 'users#delete'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
