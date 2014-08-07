Rails.application.routes.draw do
  get '/sessions/new' => 'sessions#new'
  get '/sessions/create' => 'sessions#create'
  get '/sessions/sign_out' => 'sessions#destroy'
  # Routes for the Export resource:
  # CREATE
  get '/new_export' => 'exports#new'
  get '/create_export' => 'exports#create'

  # READ
  get '/exports' => 'exports#index'
  get '/exports/:id' => 'exports#show'

  # UPDATE
  get '/exports/:id/edit' => 'exports#edit'
  get '/exports/:id/update' => 'exports#update'

  # DELETE
  get '/exports/:id/destroy' => 'exports#destroy'
  #------------------------------

  # Routes for the Import resource:
  # CREATE
  get '/new_import' => 'imports#new'
  get '/create_import' => 'imports#create'

  # READ
  get '/imports' => 'imports#index'
  get '/imports/:id' => 'imports#show'

  # UPDATE
  get '/imports/:id/edit' => 'imports#edit'
  get '/imports/:id/update' => 'imports#update'

  # DELETE
  get '/imports/:id/destroy' => 'imports#destroy'
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get '/new_comment' => 'comments#new'
  get '/create_comment' => 'comments#create'

  # READ
  get '/comments' => 'comments#index'
  get '/comments/:id' => 'comments#show'

  # UPDATE
  get '/comments/:id/edit' => 'comments#edit'
  get '/comments/:id/update' => 'comments#update'

  # DELETE
  get '/comments/:id/destroy' => 'comments#destroy'
  #------------------------------

  # Routes for the Statistic resource:
  # CREATE
  get '/new_statistic' => 'statistics#new'
  get '/create_statistic' => 'statistics#create'

  # READ
  get '/statistics' => 'statistics#index'
  get '/statistics/:id' => 'statistics#show'

  # UPDATE
  get '/statistics/:id/edit' => 'statistics#edit'
  get '/statistics/:id/update' => 'statistics#update'

  # DELETE
  get '/statistics/:id/destroy' => 'statistics#destroy'
  #------------------------------

  # Routes for the Country resource:
  # CREATE
  get '/new_country' => 'countries#new'
  get '/create_country' => 'countries#create'

  # READ
  get '/countries' => 'countries#index'
  get '/countries/:id' => 'countries#show'

  # UPDATE
  get '/countries/:id/edit' => 'countries#edit'
  get '/countries/:id/update' => 'countries#update'

  # DELETE
  get '/countries/:id/destroy' => 'countries#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  #------------------------------

  get '/home' => 'application#home'
  get 'show' => 'application#show'
end
