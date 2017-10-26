class RegistrationsController < Devise::RegistrationsController

  private
    def sign_up_params
      puts "******* sign_up_params *******"
      params.require(:user).permit(:firstname, :lastname, :username, :email, :password,
      :password_confirmation)
      # params.require(:user).permit(:email, :password, :password_confirmation)
    end

    def account_update_params
      puts "******* account_update_params *******"
      params.require(:user).permit(:firstname, :lastname, :username, :email, :password,
      :password_confirmation, :current_password)
  end
end
