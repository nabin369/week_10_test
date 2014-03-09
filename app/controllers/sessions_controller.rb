class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_username(params[:session][:username])

		if @user && @user.authenticate(params[:session][:password])
			sign_in @user
			flash[:success] = "Welcome #{@user.username.capitalize}"
			redirect_to show_user_path
		else
			flash.now[:error] = "Invalid user name/ password"

			render new_session_path
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end

end
