Rails.application.routes.draw do
  get 'threads/index'
  get 'threads/show'
  get 'threads/edit'
  get 'users/show'
  devise_for :users
end
