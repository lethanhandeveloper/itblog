class UsersController < ApplicationController
	def index
	end

	def login
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		respond_to do |format|
			if @user.save
				format.html { render :signup}
				flash[:signupsuccess] = "Success."
			else
				format.html { render :signup }
				format.json { render json: @user.errors, status: :unprocessable_entity }
			end
		end
	end

	def signup
		@user = User.new
	end

	def user_params
		params.require(:user).permit(:username, :password)
	end
end
