Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  get 'user/index'
  get 'user/login', to: "users#login"
  get 'user/signup', to: "users#signup"


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :users
  resources :detail
  resources :home

  root'home#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
