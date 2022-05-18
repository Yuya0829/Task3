Rails.application.routes.draw do

  get 'users/show'
  get 'users/edit'
  
  root to:'homes#top'
  devise_for :users
  
  resources :books, only: [:new, :index, :show]

end
