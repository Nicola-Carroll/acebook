Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :comments
  end

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'

  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  root to: 'users#new'
end
