Rails.application.routes.draw do
  root 'page#index'
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
end
