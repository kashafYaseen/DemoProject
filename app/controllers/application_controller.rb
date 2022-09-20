class ApplicationController < ActionController::Base
  # before_action :authenticate_customer!
  before_action :authenticate_employee!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(employees)
    employee_index_path
  end

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:firstName, :lastName])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:firstName, :lastName])
  # end
end
