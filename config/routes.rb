Rails.application.routes.draw do
  resources :bets
  resources :rounds
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
