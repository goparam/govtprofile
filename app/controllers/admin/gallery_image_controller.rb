class Admin::GalleryImageController < ApplicationController


		def index
 			
 			 @images = GalleryImage.where('id > ?', 0).paginate(:page => params[:page], :per_page => 6)
 		end
		
		
	def create
		 @images= GalleryImage.new(params[:images])
	    		if @images.save
			
			flash[:success] = "#{@images.id} Image is successfully Uploaded to gallery!"
		  
		else
			flash[:error] = "is  not Uploaded to gallery!"
	
		end
		 	redirect_to action: "index"
	
	end
	
	def destroy
		@images=GalleryImage.find(params[:id])
		if @images.destroy
			flash[:success] = "#{@images.id} is successfully Deleted!"
		else
			flash[:error] = "#{@images.errors.full_messages}!"
		end
		redirect_to action: "index"
	end
end
