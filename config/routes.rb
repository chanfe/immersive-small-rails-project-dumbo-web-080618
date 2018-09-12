Rails.application.routes.draw do
  resources :decks
  resources :theme_sets
  resources :users
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "sessions#new"
  get "/signup", to: "users#new"

  # get "/play", to: "users#play"
  # post "/play_game", to: "users#play_game"

  get "/login", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "logout", to: "sessions#destroy"
end
