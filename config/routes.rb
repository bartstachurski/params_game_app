Rails.application.routes.draw do
  namespace :api do
    get "/name" => "name#name_in_caps"
  end
end
