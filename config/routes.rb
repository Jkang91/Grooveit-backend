Rails.application.routes.draw do
  
  #USER ROUTES
  get "/me", to: "users#show"
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  patch "/users/:id", to: "users#update"

  #DANCEVIDEO ROUTES
  get "/dance_videos", to: "dance_videos#index"
  get "/dance_videos/:id", to: "dance_videos#show"

  #RATING ROUTES
  get "/ratings/:id", to: "ratings#show"
  post "/ratings", to: "ratings#create"
  patch "/ratings/:id", to: "ratings#update"

  #FAVORITE ROUTES
  get "/favorites", to: "favorites#index"
  get "/favorites/:id", to: "favorites#show"
  post "/favorites", to: "favorites#create"
  delete "/favorites/:id", to: "favorites#destroy"

  #COMMENT ROUTES
  get "/comments", to: "comments#index"
  get "/comments/:id", to: "comments#show"
  post "/comments", to: "comments#create"
  delete "/comments/:id", to: "comments#destroy"

  #USERVIDEOS ROUTES
  get "/user_videos", to: "user_videos#index"
  get "/user_videos/:id", to: "user_videos#show"
  post "/user_videos", to: "user_videos#create"
  patch "/user_videos/:id", to: "user_videos#update"
  delete "/user_videos/:id", to: "user_videos#destroy"

  # resources :user_videos
  # resources :favorites
  # resources :ratings
  # resources :comments
  # resources :dance_videos
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
