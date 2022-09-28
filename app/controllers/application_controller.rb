class ApplicationController < ActionController::Base
  # before_action :authenticate_customer!
  include Pagy::Backend
  # before_action :authenticate_employee!
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def after_sign_in_path_for(resource)
      if current_employee
        employee_index_path
      elsif current_admin_user
        admin_dashboard_path
      end
    end

    def authenticate_inviter!
      authenticate_admin_user!(force: true)
    end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstName, :lastName])
    devise_parameter_sanitizer.permit(:account_update, keys: [:firstName, :lastName])
  end

  def after_invite_path_for(resource)
    admin_employees_path
  end
end
