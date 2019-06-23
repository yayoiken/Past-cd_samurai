class ApplicationController < ActionController::Base
  before_action :configure_sign_up_params, if: :devise_controller?

protected
 def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :birthday, :gender])
 end
end
