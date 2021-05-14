class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  resources :users, only: [:index, :show, :edit, :update]
end
