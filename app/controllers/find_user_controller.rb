class FindUserController < ApplicationController

  def new

  end

  def find


   # flash[:info] =  "#{ (  params[:find_user][:name]).nil?  } "

    if logged_in?

    unless (params[:find_user][:name]).nil?




    @user  = User.find_by(name: params[:find_user][:name])
    user = User.find_by(name: params[:find_user][:name])



   # @user = user

    if user && user.activated?

     # UserMailer.password_reset(user).deliver_now
      #flash[:info] = "#{user.name}"

     # redirect_to find_user_path
    else
    #  flash[:warning] = "Invalid email or ur account is not activated"
     # flash[:info] = "The search has not given any results"
    #  redirect_to find_user_path
      flash[:info] = "The search has not given any results"
    end


    else
      flash[:info] = "The search has not given any results"
    end

    else
      flash[:warning] = "You are not logged in...please log in to ur account"
      redirect_to login_path
end
end
end
