Rails.application.routes.draw do
  namespace :admin do
    resources :languages
  end
  namespace :admin do
    resources :tax_rules
  end
  namespace :admin do
    resources :task_files
  end
  namespace :admin do
    resources :task_discussions
  end
  namespace :admin do
    resources :documents
  end
  namespace :admin do
    resources :banks
  end
    root 'home#index'
    get 'home/index'
    devise_for :users
    namespace :admin do
	    root 'home#index'
		get 'home/index'
        get 'home/profile'
        get 'home/payroll_summery'
        get 'home/salary_statement'
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