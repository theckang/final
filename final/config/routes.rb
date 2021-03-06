Rails.application.routes.draw do

  root 'festivals#index'

  #########################################################
  # The "Golden 7" for accessing the "festivals" resource

  get '/festivals/new' => 'festivals#new', as: 'new_festival'
  post '/festivals' => 'festivals#create', as: 'festivals'

  get '/festivals' => 'festivals#index'
  get '/festivals/:id' => 'festivals#show', as: 'festival'

  get '/festivals/:id/edit' => 'festivals#edit', as: 'edit_festival'
  patch '/festivals/:id' => 'festivals#update'

  delete '/festivals/:id' => 'festivals#destroy'

  #########################################################
  # The "Golden 7" for accessing the "locations" resource

  get '/locations/new' => 'locations#new', as: 'new_locations'
  post '/locations' => 'locations#create', as: 'locations'

  get '/locations' => 'locations#index'
  get '/locations/:id' => 'locations#show', as: 'location'

  get '/locations/:id/edit' => 'locations#edit', as: 'edit_location'
  patch '/locations/:id' => 'locations#update'

  delete '/locations/:id' => 'locations#destroy'

  #########################################################
  # The "Golden 7" for accessing the "genres" resource

  get '/genres/new' => 'genres#new', as: 'new_genres'
  post '/genres' => 'genres#create', as: 'genres'

  get '/genres' => 'genres#index'
  get '/genres/:id' => 'genres#show', as: 'genre'

  get '/genres/:id/edit' => 'genres#edit', as: 'edit_genre'
  patch '/genres/:id' => 'genres#update'

  delete '/genres/:id' => 'genres#destroy'

  #########################################################
  # The "Golden 7" for accessing the "actors" resource except the edit and update
  resources :artists, except: [:edit, :update]

  #########################################################
  # Only create and delete actions for performances
  post '/performances' => 'performances#create', as: 'performances'
  delete '/performances/:id' => 'performances#destroy'

  #########################################################
  # Sign Up, Sign In, and Sign Out

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/sessions' => 'sessions#create'

  delete '/sessions' => 'sessions#destroy'
  get '/logout' => 'sessions#destroy'

  #########################################################
  # Only delete action for "cookies" resource for browsing history
  delete '/cookies' => 'cookies#destroy'

end
