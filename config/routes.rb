Rails.application.routes.draw do
  get "/clowns" => "clowns#index"

  post "/bookings" => "bookings#create"

  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
end
