class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:account_update, keys: [:school_name, :first_name, :phone_number, :last_name, :street_address, :city, :state, :zip])
	end
end