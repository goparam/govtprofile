class Admin::GalleryImageController < ApplicationController


def index

     	@images=GalleryImage.new

		# @notifications = Notification.order("created_at desc").page(params[:page]).per_page(10)
		# #@notifications = Notification.all
		#  @title="Notification"
	end
	# def new
		
	# 	@images=GalleryImage.new
      
	# end
	def show

	end
	
	def create
		
		 @images= GalleryImage.new(params[:gallery_image])
		if @images.save
			
			flash[:success] = "#{@images.id} Image is successfully Uploaded to gallery!"
		
		else
			flash[:error] = "is  not Uploaded to gallery!"
	
		end
		 	render :action => "new"
	end
	
	# def destroy
	# 	# @notification=Notification.find(params[:id])
	# 	# if @notification.destroy
	# 	# 	@alert = "#{@notification.id} is successfully Deleted!"
	# 	# else
	# 	# 	@alert = "#{@member.errors.full_messages}!"
	# 	# end
		
	# end
end
