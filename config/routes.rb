SummerOfProject::Application.routes.draw do
  resources :projes
  resources :sessions
  resources :upload

  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"
  get 'upload/index'

  root :to => 'sessions#new'
end
