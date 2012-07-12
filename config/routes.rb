SummerOfProject::Application.routes.draw do
  resources :sessions
  resources :projects
  resources :upload

  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get 'upload/index'

  root :to => 'sessions#new'
end
