class HomeController < ApplicationController
	
	def index
		@blogs = Blog.select("*").order("id desc")
	end

end
