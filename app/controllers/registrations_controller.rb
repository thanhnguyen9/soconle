class RegistrationsController < Devise::RegistrationsController

  def update
    unless params[:user][:is_host].nil?
      super
    end
    current_user.update(account_update_params)
    flash[:notice] = 'Successfully updated'
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :is_host)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :bio, :address, :photo, :phone)
  end
end