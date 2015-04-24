Rails.application.routes.draw do
  root 'home#index'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  namespace :admin do
    get '/dashboard', to: 'base#dashboard'
    resources :announcements
  end
  resources :dashboard
end
