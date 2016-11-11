class UsersController < ApplicationController
	def new
  @user = User.new
end

def create
  @user = User.new(user_params)
  # binding.pry
  if @user.save
    redirect_to  root_url, :notice => "Signed up!"
  else
    render "new"
  end
end
private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :username,:email,:phnumber,:password)
	end
end
