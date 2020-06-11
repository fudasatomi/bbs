Rails.application.routes.draw do

  devise_for :users

  root 'topics#index'

  resources :topics do
  	resources :posts, only: [:create, :destroy]
  end

  resources :users, only: [:show ,:update]

end
