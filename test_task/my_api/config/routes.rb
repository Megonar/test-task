Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	resources :employees do
	  match 'employees/' => 'employees#update_with_body', :via => :put 
	end
	resources :companies do
        	get :employees, on: :member
        	match 'companies/' => 'employees#update_with_body', :via => :put 
	end
end
