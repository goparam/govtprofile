DepartmentPhonebookRails::Application.routes.draw do

	devise_for :users do
		get 'logout' => 'devise/sessions#destroy'
	end

	root :to => "admin/members#index"
	
	namespace :admin do    
		match "/" => "profiles#index"
		resources :profiles
		resources :members
	end
end
