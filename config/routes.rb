Rails.application.routes.draw do

  namespace :api do
    get "/players" => "players#index"
    get "/players/:id" => "players#show"
  end
end
