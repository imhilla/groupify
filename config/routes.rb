Rails.application.routes.draw do
  root 'page#index'
  devise_for :users, controllers: {
           :sessions => "users/sessions",
           :registrations => "users/registrations" }
           resources :users, :only => [:index, :show]
           resources :articles, :only => [:create, :new, :show, :index]
           resources :groups, :only => [:create, :new, :show, :index]
           resources :externals, :only => [:index]
           resources :articles do
           resources :comments, :only => [:create, :new, :show]
           resources :likes, :only => [:create]
          end
          resources :ancients, :only => [:index]
end
