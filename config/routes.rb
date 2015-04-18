Rails.application.routes.draw do
  resources :users

  root "dashboard#index"

end
