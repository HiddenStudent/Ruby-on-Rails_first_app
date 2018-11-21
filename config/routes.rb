Rails.application.routes.draw do

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


  resources :users
  resources :account_activations, only: [:edit]
  #get '/account_activators', to 'account_activators#edit'
end
