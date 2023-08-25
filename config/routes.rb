Rails.application.routes.draw do
  resources :songs do
    # WHY DO WE NEED TO NEST
    # WHEN WE NEED TO KNOW THE ID OF THE PARENT
    resources :reviews, only: [:new, :create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/search", to: "songs#search"
  # get "/songs/named/:name", to: "songs#search"

  # # READ ALL
  # get '/songs', to: 'songs#index', as: :songs

  # # CREATE
  # # 1. new -> display the form
  # get '/songs/new', to: 'songs#new', as: :new_song
  # post '/songs', to: 'songs#create'
  # # READ ONE
  # get '/songs/:id', to: 'songs#show', as: :song
  # patch '/songs/:id', to: 'songs#update'
  # # DELETE
  # delete '/songs/:id', to: 'songs#destroy'

  # # UPDATE
  # # 1. edit
  # get '/songs/:id/edit', to: 'songs#edit', as: :edit_song
  # # 2. receive the form


end


# HTTP
# - verb (get/post/patch/delete)
# - url  - https://www.lewagon.com?city=rio
# - headers - Accept-Language / User-Agent / cookies
# - body - POST / PATCH = where we submit the REAL info

# PARAMS
# 1. query strings (url)
# 2. dynamic fields from routes
# 3. retrieve data from form submissions
