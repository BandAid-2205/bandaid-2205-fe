Rails.application.routes.draw do
  root 'welcome#index'
  get '/', to: 'welcome#index'
  get '/events', to: 'events#index'
  get '/dashboard', to: 'users#show'

  get '/auth/google_oauth2', as: :google_login
  get '/auth/google_oauth2/callback', to: 'users#create'
end
