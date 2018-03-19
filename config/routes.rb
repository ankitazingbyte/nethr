Rails.application.routes.draw do

  namespace :admin do
    resources :expenses
  end
  namespace :admin do
    resources :notices
  end
  namespace :admin do
    resources :awards
  end
  namespace :admin do
    resources :events do 
        collection do 
          get :get_events
          post :move
          post :resize
        end
    end
  end
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

    end
end