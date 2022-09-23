Rails.application.routes.draw do
  root 'welcome#index'
  get '/', to: 'welcome#index'

  get '/roles', to: 'users#show'
  post '/roles', to: 'user_role#update'

  get '/artists/register', to: 'artists#new'
  post '/artists/register', to: 'artists#create'
  get '/artists/import', to: 'artists#import'
  get '/artists/dashboard', to: 'artists#show'

  get '/venues', to: 'venues#index'
  get '/venues/register', to: 'venues#new'
  post '/venues/register', to: 'venues#create'
  get '/venues/edit', to: 'venues#edit'
  patch '/venues/edit', to: 'venues#update'
  get '/venues/dashboard', to: 'venues#show'
  patch '/venues/dashboard', to: 'venue_artists#update'

  get '/auth/google_oauth2', as: :google_login
  get '/auth/google_oauth2/callback', to: 'users#create'
  delete '/logout', to: 'users#destroy'

  resources :artists, only: [:show]
end
