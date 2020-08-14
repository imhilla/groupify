class ApplicationController < ActionController::Base
  # application_controller.rb

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # There are just three actions in Devise that allows any set of parameters to be passed down to the model,
  # therefore requiring sanitization. Their names and the permited parameters by default are:

  # sign_in (Devise::SessionsController#new) - Permits only the authentication keys (like email)
  # sign_up (Devise::RegistrationsController#create) - Permits authentication keys plus password and password_confirmation
  # account_update (Devise::RegistrationsController#update) - Permits authentication keys plus password, password_confirmation
  # and current_password. More at https://github.com/plataformatec/devise#strong-parameters

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:username, :name, :password, :password_confirmation, :email)
    end
    devise_parameter_sanitizer.permit(:sign_in) do |u|
      u.permit(:username, :email, :password, :password_confirmation, :phone, :validate_username, :current_password, :remember_me)
    end
  end
end
