class UsersController < ApplicationController
	respond_to :json

	def create
		User.create(user_params)
	end

	def edit
		User.update(user_params)
	end

	private

	def user_params(params)
    params.require(:user).permit(:email, :phone_number, :recieve_text, :recieve_email)
	end

end