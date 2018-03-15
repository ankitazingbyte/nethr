Rails.application.routes.draw do
  resources :notices
  resources :awards
  resources :holidays
  resources :jobs
	resources :designations
	resources :departments
	root 'home#index'
	get 'home/index'
end
