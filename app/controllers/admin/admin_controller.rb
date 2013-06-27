class Admin::AdminController < ApplicationController
	before_filter :authenticate_approved  
	
	layout 'admin'
end