Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'
  #http verb, url path, to controllername actionname
  get '/tasks/new', to: 'tasks#new', as: :create
  post '/tasks', to: 'tasks#create'

  get'/tasks/:id', to: 'tasks#show', as: :task

  get '/tasks/:id/edit', to: 'restaurant#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  delete '/tasks/:id', to: 'tasks#destroy', as: :destroy_task

end
