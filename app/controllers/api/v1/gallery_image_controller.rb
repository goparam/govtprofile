class Api::V1::GalleryImageController <  Api::V1::ApiV1Controller

 def index
		
		@images=GalleryImage.all
			
		render "api/v1/gallery_image/index.json"
	end
	def show

	end
	
end