Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #REMEMBER THE VIEW NAME HAS TO MATCH THE ACTION


  # to see ALL tasks
  get '/tasks', to: 'tasks#index', as: :tasks

  #new
  get '/tasks/new', to: 'tasks#new', as: :new_task

  # to see ONE task
  get '/tasks/:id', to: 'tasks#show', as: :task

  #create a restaurant
  post '/tasks', to: 'tasks#create'

  #update a restaurant
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  #delete a restaurant
  delete '/tasks/:id', to: 'tasks#destroy'
end
