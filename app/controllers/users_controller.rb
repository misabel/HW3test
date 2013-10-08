class UsersController < ApplicationController

  def new
    # default: render 'new' template
  end

def create 
	
	if !User.exists?(:user_id => params[:user][:user_id])
	   @user = User.create_user!(params[:user])
	   flash[:notice] = "Welcome #{@user.user_id}. Your account has been created"
           redirect_to login_path
	else
	   flash[:notice] = "Sorry, this user-id is taken. Try Again."
	   redirect_to new_user_path
      end
end
  
end
