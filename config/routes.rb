Rails.application.routes.draw do
  root 'page#index'
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
           resources :users, :only => [:index, :show]
           resources :articles
           resources :groups
           resources :externals
           resources :articles do
           resources :comments
           resources :likes
          end
          resources :ancients, :only => [:index]
end
