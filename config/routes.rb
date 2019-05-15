Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  get 'session/new', as: :new_session
  post 'session/create', as: :login
  delete 'session/destroy', as: :logout
  get 'welcome/index', as: :dashboard
end
