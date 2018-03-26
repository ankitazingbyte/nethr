Rails.application.routes.draw do
    root 'home#index'
    get 'home/index'
    devise_for :users
    namespace :admin do
	    root 'home#index'
		  get 'home/index'
          get 'home/profile'
        resources :departments
        resources :designations
        resources :jobs
        resources :employee_roles
        resources :employees
        resources :attendances
        resources :leaves
        resources :tasks
        resources :trainers
        resources :trainings
        resources :assessments
        resources :training_events
        resources :evaluations
        resources :tickets
        resources :support_departments
        resources :funds
        resources :loans
        resources :increments
        resources :slips
        resources :awards
        resources :notices
        resources :expenses
        resources :holidays
        resources :events do 
          collection do 
            get :get_events
            post :move
            post :resize
          end
        end
    end
end