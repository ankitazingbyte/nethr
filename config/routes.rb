Rails.application.routes.draw do
    root 'home#index'
    get 'home/index'
    devise_for :users, controllers:{
        sessions: 'users/sessions'
      }

    devise_scope :users do
        get "/register", :to => "devise/registrations#new", :as => "new_registration"
    end
      # devise_scope :user do
      #   get "user/sign_up", to: "users/registrations#new", as: :new_user_registration
      #   post "user/sign_up", to: "users/registrations#create", as: :user_registration
      # end
    namespace :admin do
	    root 'home#index'
		get 'home/index'
        get 'home/profile'
        get 'home/payroll_summery'
        get 'home/salary_statement'
        get 'home/job_applicant'
        get 'home/system'
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
        resources :banks
        resources :documents
        resources :task_discussions
        resources :task_files
        resources :tax_rules
        resources :languages
        resources :events do 
          collection do 
            get :get_events
            post :move
            post :resize
          end
        end
    end
end