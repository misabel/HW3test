class SessionsController < ApplicationController

def new

end

def create
   if User.exists?(:user_id => params[:user][:user_id])
      @user = User.where(:user_id => params[:user][:user_id])
      session[:session_token] = params[:user][:user_id]
      flash[:notice] = "You are logged in as #{params[:user][:user_id]}"
      redirect_to movies_path
   else
      flash[:notice] = "Invalid user-id/e-mail combination"
      redirect_to login_path
   end
end

def destroy
  session.delete(:session_token)
  flash[:notice] = "#{params[:user][:user_id]}"
  redirect_to movies_path
end
end
