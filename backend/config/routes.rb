Rails.application.routes.draw do
  resources :notes
  resource :users, only: [:create] 
  post "/register", to: "users#register" 
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
