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
		resources :members

		resources :profiles
	end

	namespace :api do 
		namespace :v1 do 
			resources :designations
			resources :members
			resources :search_by_fields
		end
	end

	resources :members
end
