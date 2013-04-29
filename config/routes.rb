GResolutionRails::Application.routes.draw do

	devise_for :users do
		get 'logout' => 'devise/sessions#destroy'
	end

	root :to => "admin/grs#index"
	
	namespace :admin do    
		match "/" => "grs#index"
		resources :grs
		resources :departments
	end

	namespace :api do    
		namespace :v1 do
			resources :grs
			resources :api_v1
		end
	end

end
