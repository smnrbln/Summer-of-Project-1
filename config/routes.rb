SummerOfProject::Application.routes.draw do

  get "admin/index"

  get "ogrenci/index"
  match "admin/groups" => "admin#groups"
  match "admin/create_groups" => "admin#creategroup"
  resources :sessions
  resources :projes

  get "login" => "sessions#new", as: "login"
  get "logout" => "sessions#destroy", as: "logout"

  match "ogrenci/index" => "ogrenci#selectproje"
  match "ogrenci/index" => "ogrenci#rapor"
  root to: 'sessions#new'
end
