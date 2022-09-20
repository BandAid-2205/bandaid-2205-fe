Rails.application.routes.draw do
  root 'welcome#index'
  get '/', to: 'welcome#index'
  get '/events', to: 'events#index'
  get '/roles', to: 'users#show'
  post '/roles', to: 'user_role#update'
  get 'artists/register', to: 'artists#new'
  get 'venues/register', to: 'venues#new'

  get '/auth/google_oauth2', as: :google_login
  get '/auth/google_oauth2/callback', to: 'users#create'
end
