Rails.application.routes.draw do
  devise_for :accounts
  get '/dashboard', to: "accounts#index"
  root "public#homepage"
end
