class UsersController < ApplicationController
	def registre
		@user = User.new

	end
end
