Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :user, only:[:show, :index, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
