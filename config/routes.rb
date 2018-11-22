Rails.application.routes.draw do

  get 'relationships/create'

  get 'relationships/destroy'

  get 'remind/new'

  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'



  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'

  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/signup', to: 'users#create'

  get '/remind', to: 'remind#new'
  post '/remind', to: 'remind#create'

  get 'newpass', to: 'newpass#show'
  post 'newpass', to: 'newpass#create'
  patch 'newpass', to: 'newpass#create'


  get 'find_user', to: 'find_user#find'
  post 'find_user', to: 'find_user#find'




  resources :users do
    member do
      get :following, :followers
    end
  end

  #resources :newpass,     only: [:show, :create, :edit, :update]
  resources :users
  resources :account_activations, only: [:edit]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  #get '/account_activators', to 'account_activators#edit'
end
