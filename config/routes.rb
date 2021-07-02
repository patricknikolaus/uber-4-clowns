Rails.application.routes.draw do
  get "/clowns" => "clowns#index"

  post "/bookings" => "bookings#create"
  get "/bookings" => "bookings#index"
  
  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
end
