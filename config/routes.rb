Rails.application.routes.draw do

  namespace :api do
    get "/players" => "players#index"
  end
end
