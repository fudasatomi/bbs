Rails.application.routes.draw do
  get 'topics/index'
  get 'topics/show'
  get 'topics/edit'
  get 'users/show'
  devise_for :users
end
