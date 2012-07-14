SummerOfProject::Application.routes.draw do
  get "student/index"
  match "student/index" => "student#selectproject"
  match "student/index" => "student#report"

  get "admin/index"
  match "admin/groups" => "admin#groups"
  match "admin/create_groups" => "admin#creategroup"

  resources :sessions
  resources :projects
  resources :upload

  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get 'upload/index'
  
 

  root :to => 'sessions#new'
end
