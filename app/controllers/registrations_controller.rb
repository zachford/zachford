class RegistrationsController < Devise::RegistrationsController

private

#Modified Devise Params for user login
		  def sign_up_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation, :remember_me, :type)
    	end
	 		# devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :type) }
  	def after_sign_up_path_for(resource)
      work_path
		end


		 def after_inactive_sign_up_path_for(resource)
      work_path
    end
end
