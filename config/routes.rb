Rails.application.routes.draw do
  root 'welcome#index'
  get '/', to: 'welcome#index'
  get '/events', to: 'events#index'
  get '/roles', to: 'roles#show'
  get '/artists/register', to: 'artists#new'
  get '/artists/import', to: 'artists#import'
  get '/venues/register', to: 'venues#new'
  get '/auth/google_oauth2', as: :google_login
  get '/auth/google_oauth2/callback', to: 'users#create'

end
