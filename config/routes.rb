Rails.application.routes.draw do
  resource :user, format: 'json'
  resources :tutorials, format: 'json'
  resources :subjects, format: 'json'
  resources :likes, only: [:index, :create, :destroy], format: 'json'

  get '/search', to: 'search#index', format: 'json'

  post '/login', to: 'sessions#create', format: 'json'

end
