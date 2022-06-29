Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "todos/index"
  get 'beauty_apps/index'
  match 'a', :to => 'beauty_apps#index', :via => :get

  match 'users/new_file', :to => 'users#new_file', :via => :get
  match 'users/create', :to => 'users#create', :via => :post

  
  match 'todos/create', :to => 'todos#create', :via => :post
  get '/delete/:id', :to => 'todos#delete', :via => :delete
  match 'todos/update/:id', to: 'todos#update', via:  :get
end

