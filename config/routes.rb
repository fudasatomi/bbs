Rails.application.routes.draw do
  get 'posts/create'
  get 'posts/destroy'
  get 'threads/create'
  get 'threads/index'
  get 'threads/show'
  get 'threads/edit'
  get 'threads/update'
  get 'threads/destroy'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  devise_for :users
end
