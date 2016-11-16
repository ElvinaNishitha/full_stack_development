class UsersController < ApplicationController
  def new
  @user = User.new
end

def create
  # binding.pry
  @user = User.new(user_params)
  if @user.save
    redirect_to log_in_path, :notice => "Signed in!"
  else
    render "new"
  end
end

private
	def user_params
  # binding.pry

		params.require(:user).permit(:firstname,:lastname,:username,:email,:phnumber,:password,:password_confirmation)
	end
end
