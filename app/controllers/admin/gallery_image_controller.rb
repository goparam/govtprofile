class Admin::GalleryImageController < ApplicationController


def index

     	# @images=GalleryImage.all
<<<<<<< HEAD

		
	end
=======
end
>>>>>>> 5df3c12bf33d4327996336dee019fba8dfcbbec4
	def new
		
	 	@images=GalleryImage.new
      
	end
	def show

		 # @images=GalleryImage.all

	end
	
	def create
		

		 @images= GalleryImage.new(params[:images])
	     # @images.caption=params[:caption]
	     # @images.image_details=params[:image_details]

		if @images.save
			
			flash[:success] = "#{@images.id} Image is successfully Uploaded to gallery!"
		  puts params[:images]
		else
			flash[:error] = "is  not Uploaded to gallery!"
	
		end
		 	render :action => 'new'
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
