Rails.application.routes.draw do
  
  resources :users
  resources :search ,only: [:new]
  post "/search" => "search#search_users" 
  get "/search/new" => "search#new"
  get "/user/:user_id/friends" => "users#friends"
  root "search#new"

  get "/make_a_friend/:user_id/:friend_id" => "friends#make_a_friend"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
