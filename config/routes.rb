Rails.application.routes.draw do
  resources :collections
  resources :decks
  resources :theme_sets
  resources :users
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "sessions#new"
  get "/signup", to: "users#new"

  # get "/play", to: "users#play"
  # post "/play_game", to: "users#play_game"
  post "/users/buy", to: "users#buy"
  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  #POST the buy_this to users
  post "/cards/:card_id/buy_this", to: "users#buy_this"
end
