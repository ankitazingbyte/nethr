Rails.application.routes.draw do

  resources :leaves
    devise_for :users
    resources :notices
    resources :awards
    resources :holidays
    resources :jobs
    
    root 'home#index'
    get 'home/index'
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

    end
end
