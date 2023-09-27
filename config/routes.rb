Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "logins#new"

  resources :developer
  resources :users

  get "/signin", to: "logins#new"

  post "/signin", to: "logins#create"

  delete "/signin", to: "logins#destroy"
end
