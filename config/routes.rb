Rails.application.routes.draw do
  namespace :api do
    get "/name" => "name#name_in_caps"
    get "/guess_a_number" => "name#guess_a_number"
  end
end
