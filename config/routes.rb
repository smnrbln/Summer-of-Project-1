SummerOfProject::Application.routes.draw do
  get "sessions/new"
  root :to => 'Sessions#new'
  
 
end
