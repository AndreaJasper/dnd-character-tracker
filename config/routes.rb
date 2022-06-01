Rails.application.routes.draw do
  devise_for :users
  root 'landing_page#index'

  get "/users", to: "users#index"
end
