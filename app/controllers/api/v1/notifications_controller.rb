class Api::V1::NotificationsController < ApplicationController
	def index
		
			# User.find_by_imeino("89564897522")
			@notifications=Notification.where("created_at>=?",User.find_by_imeino(params[:imeino]).created_at).order("created_at DESC").page(params[:page]).per_page(10) rescue []
			@total=@notifications.total_pages
		    @total_notification=@notifications.count()
		    if !@notifications.nil? && !@notifications.blank?
				render "api/v1/notifications/index.json.rabl"
			else
				render :json => {:success=>false, :message=>"notification does not found"}
			end
			# @notifications =Notification.order("created_at desc").page(params[:page]).per_page(10) rescue []
		
		
	end
	
	# def show
	# 		# @user=User.find_by_imeino(params[:id])
	# 		# # User.find_by_imeino("89564897522")
	# 		# @created_at=@user.created_at
	# 		# @notifications=Notification.where("created_at>=?",User.find_by_imeino(params[:id]).created_at).order("created_at DESC").page(params[:page]).per_page(10) rescue []
	# 		# @total=@notifications.total_pages
	# 	 #    @total_notification=@notifications.count()
	# 		# render "api/v1/notifications/index.json.rabl"

	# 	# if !@total_notification_read.nil? && !@total_notification.blank?
	# 	# 	render :json => {:unread_notification => @total_notification-@total_notification_read.to_i}and return 
	# 	# else
	# 	# 	render :json => {:success=>false, :message=>"notification does not found"}
	# 	# end


	# 	# @notification = Notification.find(params[:id]) rescue ""
	# 	# if !@notification.nil? && !@notification.blank?
	# 	# 	render :json => {:title => @notification.title, :description => @notification.description, :notificationType=>@notification.notificationType, :created_at=>@notification.created_at,:document=>@notification.document}and return 
	# 	# else
	# 	# 	render :json => {:success=>false, :message=>"notification does not found"}
	# 	# end
	# end
	# # def update
		
	# # 	if params[:unit].nil? || params[:name].nil? && params[:to].nil? && params[:from].nil? && params[:unique_code].nil? && params[:unit].nil?
	# # 			@grs = Gr.order("grs.gr_date desc").paginate(:page => params[:page], :per_page => 10)
	# # end

 
end
