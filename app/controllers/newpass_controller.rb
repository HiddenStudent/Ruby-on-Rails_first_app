class NewpassController < ApplicationController






=begin  def edit
    user = User.find_by(email: params[:email])
    if user && !user.activated? && user.authenticated?(:activation, params[:id])
    if user && !user.activated?
      user.activate
      log_in user
      flash[:success] = "Account activated!"
     redirect_to login_path
   else
      flash[:danger] = "Invalid activation link"
     redirect_to root_url
    end
  end
=end

  def show
    @user  = User.find_by_email(params[:email])

  end

  def create
  user = User.find_by_email(params[:email])
  user.password = (params[:newpass][:password])
  if user.save
    flash[:info] = "Welcome! Ur password has been changed"
    redirect_to user

  #user = User.find_by(email: params[:session][:email].downcase)
  #if user && user.authenticate(params[:session][:password])
      #if user && user.activated?
      # @user.send_activation_email
    #  UserMailer.password_reset(user).deliver_now

    else
      #message  = "Account not activated. "
      # message += "Check your email for the activation link."
      flash[:warning] = "Invalid password or ur account is not activated"
      redirect_to root_url
    end
  end
end
