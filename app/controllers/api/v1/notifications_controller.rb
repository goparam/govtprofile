class Api::V1::NotificationsController < ApplicationController
	def index
		@notifications = Notification.order("created_at desc").page(params[:page]).per_page(10)
	end
end
