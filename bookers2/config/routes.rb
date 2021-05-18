Rails.application.routes.draw do
  root to:'homes#top'
  get 'home/about'  => 'homes#about', :as => 'homes_about'
  get 'users/show'
  devise_for :users
  resources :users
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]

end