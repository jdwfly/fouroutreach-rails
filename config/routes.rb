Rails.application.routes.draw do
  devise_for :users
  resources :prospects

  get 'static_pages/home'

  root 'static_pages#home'
end
