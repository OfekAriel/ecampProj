class UsersController < ApplicationController
	def index

	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def create
        @user = User.new(user_params)
        @user.admin = false;
		if @user.save 
			#redirect_to @user
		else
			render 'new'
		end
	end
	def user_params
		params.require(:user_form).permit(:username, :name, :password, :sex, :dob)
	end
end
