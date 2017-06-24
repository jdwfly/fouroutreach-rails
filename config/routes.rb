Rails.application.routes.draw do
  get 'prospects/index'

  get 'static_pages/home'

  root 'static_pages#home'
end
