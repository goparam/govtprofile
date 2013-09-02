class Api::V1::NotificationsController < ApplicationController
	def index
		@notifications = Notification.order("created_at desc").page(params[:page]).per_page(10) rescue []
		@total=@notifications.total_pages
	end
	def show
		@notification = Notification.find(params[:id]) rescue ""
		if !@notification.nil? && !@notification.blank?
			render :json => {:title => @notification.title, :description => @notification.description, :notificationType=>@notification.notificationType, :created_at=>@notification.created_at}and return 
		else
			render :json => {:success=>false, :message=>"notification does not found"}
		end
	end
end
