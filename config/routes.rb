Rails.application.routes.draw do
  resources :teams, execpt: [:index]
  get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
end
