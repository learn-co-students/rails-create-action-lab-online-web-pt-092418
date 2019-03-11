Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/student/:id', to: 'students#show', as: 'student'
  get '/student/new', to: 'students#new'
  post '/students', to: 'students#create'
end
