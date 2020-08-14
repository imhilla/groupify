Rails.application.routes.draw do
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
end
