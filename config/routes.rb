Rails.application.routes.draw do
  resources :ducks, only: [:index]
  resources :students, only: [:index]

  get '/students/new', to: 'students#new', as: 'new_student'
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  patch '/students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#destroy'

  get '/ducks/new', to: 'ducks#new', as: 'new_duck'
  post '/ducks', to: 'ducks#create'
  get '/ducks/:id', to: 'ducks#show', as: 'duck'
  get '/ducks/:id/edit', to: 'ducks#edit', as: 'edit_duck'
  patch '/ducks/:id', to: 'ducks#update'
  delete '/ducks/:id', to: 'ducks#destroy'
end
