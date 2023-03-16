Rails.application.routes.draw do
  resources :tasks do
  resources :subtasks
  end
  #creates all 7 routes for you
  root "tasks#index"
end
