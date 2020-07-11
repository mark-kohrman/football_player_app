Rails.application.routes.draw do

  namespace :api do
    get "/players" => "players#index"
    get "/players/:id" => "players#show"
    post "/players" => "players#create"
    patch "/players/:id" => "players#update"
  end
end
