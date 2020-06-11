Rails.application.routes.draw do

  devise_for :users

  root 'topics#index'

  resources :topics, except: [:new] do
  	resources :posts, only: [:create, :destroy]
  end

  resources :users, only: [:show ,:update]

end
