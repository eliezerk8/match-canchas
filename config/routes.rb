Rails.application.routes.draw do
  devise_for :users  , :path_prefix => 'my', :controllers => {:registrations => "registrations"}
  devise_scope :user do
    get 'login', to: 'devise/session#new'
  end

  
  get 'informes/index'
  get 'informes/new'
  resources :users
  
  resources :facultads

  resources :estudiantes
 
  

  

  resources :informes
  resources :rols
  
  resources :carreras
  resources :page

  

  devise_scope :user do
    authenticated :user do
      root 'page#index', as: :authenticated_root
    end
  end
  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end



  delete 'users/:id/edit', to: 'users#delete'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
