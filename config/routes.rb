Rails.application.routes.draw do
  root 'welcome#index'
  get '/', to: 'welcome#index'
  get '/events', to: 'events#index'
  get '/roles', to: 'roles#show'
  get '/artists/register', to: 'artists#new'
  post '/artists/register', to: 'artists#create'
  get '/artists/import', to: 'artists#import'
  get '/artists/:id', to: 'artists#show', as: '/artist/dashboard'
  get '/venues/register', to: 'venues#new'
  get '/auth/google_oauth2', as: :google_login
  get '/auth/google_oauth2/callback', to: 'users#create'

end
