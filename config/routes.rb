Rails.application.routes.draw do
  namespace :api do
    get "/name" => "name#name_in_caps"
    get "/guess_a_number" => "name#guess_a_number"
    get "/name_segment/:name" => "name#name_in_caps"
    get "/guess_a_number_segment/:guess" => "name#guess_a_number"
    get "/guess_a_number_glob/*name/test/*guess" => "name#guess_a_number"
  end
end
