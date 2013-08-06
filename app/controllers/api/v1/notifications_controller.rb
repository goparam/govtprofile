class Api::V1::NotificationsController < ApplicationController
	def index
		@notifications = Notification.order("created_at desc").page(params[:page]).per_page(10)
	end
	def show
		@notification = Notification.find(params[:id])

		render :json => {:title => @notification.title, :description => @notification.description, :notificationType=>@notification.notificationType}and return 
	end
end
