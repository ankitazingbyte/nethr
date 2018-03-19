Rails.application.routes.draw do
 
    root 'home#index'
    get 'home/index'
    devise_for :users
    namespace :admin do
	    root 'home#index'
		  get 'home/index'
        resources :departments
        resources :designations
        resources :jobs
        resources :employee_roles
        resources :employees
        resources :attendances
        resources :leaves
        resources :events do 
          collection do 
            get :get_events
            post :move
            post :resize
          end
        end
        resources :awards
        resources :notices
        resources :expenses
    end
end