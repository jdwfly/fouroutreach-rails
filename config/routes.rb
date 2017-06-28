Rails.application.routes.draw do
  devise_for :users
  resources :prospects do
    resources :followups
  end

  get 'static_pages/home'

  root 'prospects#index'
end
