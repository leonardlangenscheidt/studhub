class ApplicationController < ActionController::Base
	before_filter :configure_permitted_parameters, if: :devise_controller?

      def stored_location_for(resource)
            nil
      end

      def after_sign_up_path_for(resource)
            new_earring_path
      end

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
		devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :current_password, :password, :password_confirmation) }
	end
end
