SummerOfProject::Application.routes.draw do
  resources :projects

  get "sessions/new"
  root :to => 'Sessions#new'
  
 
end
