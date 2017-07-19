Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  resources :prospects do
    resources :followups, only: [:new, :create, :update, :edit, :destroy]
  end

  namespace :admin do
    get 'dashboard', to: 'admin#dashboard'
    get '', to: 'admin#dashboard'
  end

  get 'static_pages/home'

  root 'prospects#index'
end
