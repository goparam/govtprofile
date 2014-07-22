DepartmentPhonebookRails::Application.routes.draw do

	devise_for :users do
		get 'logout' => 'devise/sessions#destroy'

	end
	
	root :to => "admin/members#index"
	
	namespace :admin do    
		get 'english/new' => 'members#english'
		get 'english/:id/edit' => 'members#englishEdit'
		get 'users' => 'members#users'
		get 'users/:id' => 'members#userdestroy'
		get 'approve/:id' => 'members#approve'
		get 'decline/:id' => 'members#decline'
		get 'edit/:id' => 'members#edituser'
		post 'edit' => 'members#updateuser'
		get 'map/:id' => 'members#showmap'
		get 'new' =>'gallery_image#new'
		post'create'=>'gallery_image#create'
		get 'index'=> 'gallery_image#index'
		resources :members
		resources :notifications
		resources :profiles
		resources :gallery_image


	end

	namespace :api do 
		namespace :v1 do 
			resources :designations
			resources :members 
			resources :gallery_image
			resources :notifications

			resources :users do
				post 'login', :on => :collection
			    post 'register', :on => :collection
				post 'logout', :on => :collection
				post 'resetpassword', :on => :collection 
				post 'change', :on => :collection 
				put 'update_photo', :on => :collection
         		
			
			end

			
		
		end
   
	      
		  
	end

    
	

end