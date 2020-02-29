class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :is_private, :likes_count, :comments_count])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:username, :is_private, :likes_count, :comments_count])
  end
end
