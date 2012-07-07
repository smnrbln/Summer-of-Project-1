SummerOfProject::Application.routes.draw do
  resources :sessions
  resources :projects

  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"

  root :to => 'sessions#new'
end
