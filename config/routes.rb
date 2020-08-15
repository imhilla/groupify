Rails.application.routes.draw do
  root 'page#index'
  resources :users
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
end
