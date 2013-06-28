DepartmentPhonebookRails::Application.routes.draw do

	devise_for :users do
		get 'logout' => 'devise/sessions#destroy'

	end
	
	root :to => "admin/members#index"
	
	namespace :admin do    
		get 'english/new' => 'members#english'
		get 'english/:id/edit' => 'members#englishEdit'
		get 'users' => 'members#users'
		get 'approve/:id' => 'members#approve'
		get 'decline/:id' => 'members#decline'
		resources :members

		resources :profiles
	end

	namespace :api do 
		namespace :v1 do 
			resources :designations
			resources :members
			
			resources :users do
				post 'login', :on => :collection
				post 'register', :on => :collection
				post 'logout', :on => :collection
			end
		end
	end

	resources :members
end
