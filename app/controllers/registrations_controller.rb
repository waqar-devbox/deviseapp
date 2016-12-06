#This controller is going to override parameters for devise or simply devise defaults
#why
#because we are going to add a name field to our database
class RegistrationsController < Devise::RegistrationsController

	private 
	def sign_up_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
	def account_update_params
		params.require(:user).permit(:name, :email, :password,
									 :password_confirmation, :current_password)
	end
end