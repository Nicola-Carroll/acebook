Rails
  .application
  .routes
  .draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :posts, :users

    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'

    # get to posts
    
    # get '/login', to: 'users#login'



  end
