Rails.application.routes.draw do
  resources :decks
  resources :theme_sets
  resources :users
  resources :cards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
