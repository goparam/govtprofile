class Api::V1::NotificationsController < ApplicationController
	def index
		@notifications = Notification.order("created_at desc").page(params[:page]).per_page(10) rescue []
		@total=@notifications.total_pages
		render "api/v1/notifications/index.json.rabl"
		@total_notification=Notification.count(:all)
	end
	def show
			@total_notification=Notification.count(:all)
			@total_notification_read=params[:id]
			

		if !@total_notification_read.nil? && !@total_notification.blank?
			render :json => {:unread_notification => @total_notification-@total_notification_read.to_i}and return 
		else
			render :json => {:success=>false, :message=>"notification does not found"}
		end


		# @notification = Notification.find(params[:id]) rescue ""
		# if !@notification.nil? && !@notification.blank?
		# 	render :json => {:title => @notification.title, :description => @notification.description, :notificationType=>@notification.notificationType, :created_at=>@notification.created_at,:document=>@notification.document}and return 
		# else
		# 	render :json => {:success=>false, :message=>"notification does not found"}
		# end
	end

 # def create
	# 		@totalread=params[:all].count
	# 		@total_notification=Notification.count(:all)
	# 		render "api/v1/notifications/totalread.json.rabl"
 # end

end
