Rails.application.routes.draw do
  devise_for :users  , :path_prefix => 'my', :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/session#new'
  end
  resources :users
  delete 'users/:id/edit', to: 'users#delete'

  get 'informes/index'
  get 'informes/new'
  
  resources :facultads
  delete 'facultads/:id/edit', to: 'facultads#delete'
  resources :alertas
  resources :estudiantes
 
  resources :informes
  resources :rols
  
  resources :carreras
  delete 'carreras/:id/edit', to: 'carreras#delete'
  resources :page

  

  devise_scope :user do
    authenticated :user do
      root 'page#index', as: :authenticated_root
    end
  end
  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end



  




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
