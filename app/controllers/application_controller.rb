class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:description, :website, :username, :first_name, :last_name, :email, :password, :image)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password, :current_password, :image, :description, :website)
    end
  end
end
