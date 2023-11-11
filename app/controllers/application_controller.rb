class ApplicationController < ActionController::Base
  before_action :authenticate_account!
  protect_from_forgery with: :exception

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :first_name, :last_name, :email, :password, :image) }
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:username, :first_name, :last_name, :email, :password, :current_password, :image)
    end
  end
end
