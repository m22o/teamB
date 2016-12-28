class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to :action => "show",:id => @user.id
	end
	
	def show
		@user = User.find(params["id"])
	end
		
	private

	def user_params
		params[:user].permit(nil,:name,:pass,:phone,nil)
	end
end
