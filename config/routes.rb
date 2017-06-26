Rails.application.routes.draw do
  resources :prospects

  get 'static_pages/home'

  root 'static_pages#home'
end
