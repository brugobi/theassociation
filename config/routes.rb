Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "players" => "players#index"
  get "players/new" => "players#new"
  post "players" => "players#create"
  get "players/:id" => "players#show"
end
