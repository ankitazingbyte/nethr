Rails.application.routes.draw do
  devise_for :users
  resources :notices
  resources :awards
  resources :holidays
  resources :jobs
	resources :designations
	resources :departments
	root 'home#index'
	get 'home/index'
	namespace :admin do
    get 'home/index'
    root 'home#index'
  end
end
