class RemindController < ApplicationController
  def new
  end


def create
  user = User.find_by(email: params[:remind][:email].downcase)
  if user && user.activated?
 # @user.send_activation_email
  UserMailer.password_reset(user).deliver_now
  flash[:info] = "Please check your email to remind the password."
  redirect_to root_url
    else
      #message  = "Account not activated. "
     # message += "Check your email for the activation link."
     flash[:warning] = "Invalid email or ur account is not activated"
      redirect_to root_url
  end
  end
end


