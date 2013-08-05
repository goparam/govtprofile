class Admin::NotificationsController < Admin::AdminController
	def index
		@notifications = Notification.order("created_at desc").page(params[:page]).per_page(10)
		#@notifications = Notification.all
		 @title="Notification"
	end
	def new
	end
	def create
		@notification=Notification.new(params[:notification])
		if @notification.save
			flash[:success] = "#{@notification.id} is successfully Added!"
		else
			flash[:error] = "#{@member.errors.full_messages}!"
		end
		redirect_to  admin_notifications_url
	end
	def destroy
		@notification=Notification.find(params[:id])
		if @notification.destroy
			@alert = "#{@notification.id} is successfully Deleted!"
		else
			@alert = "#{@member.errors.full_messages}!"
		end
		
	end
end
