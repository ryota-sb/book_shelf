Rails.application.routes.draw do
  root to: 'tops#index'
  get '/about', to: 'tops#about'

  get '/signup', to: 'users#new'
  post 'signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :books do
    get 'search', on: :collection
    resources :comments, only: [:create, :destroy]
  end

  resources :likes, only: [:create, :destroy] do
    member do
      get :book_show, :user_show
    end
  end

  resources :continues, param: :user_id, only: [:create, :destroy]
  
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :relationships, only: [:create, :destroy]
end
