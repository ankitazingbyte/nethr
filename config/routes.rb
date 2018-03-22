Rails.application.routes.draw do
 
  namespace :admin do
    resources :support_departments
  end
  namespace :admin do
    resources :tickets
  end
  namespace :admin do
    resources :evaluations
  end
  namespace :admin do
    resources :training_events
  end
  namespace :admin do
    resources :assessments
  end
  namespace :admin do
    resources :trainings
  end
  namespace :admin do
    resources :trainers
  end
  namespace :admin do
    resources :tasks
  end
  mount Ckeditor::Engine => '/ckeditor'
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
        resources :holidays
    end
end