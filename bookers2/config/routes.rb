Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to:'homes#top'
  get 'homes/about' => 'homes#about'
 resources :books, only: [:index, :show, :create, :edit, :update, :destroy]

end
