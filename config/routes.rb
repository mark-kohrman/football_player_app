Rails.application.routes.draw do

  namespace :api do
    get "/players" => "players#index"
    get "/players/:id" => "players#show"
    post "/players" => "players#create"
  end
end
