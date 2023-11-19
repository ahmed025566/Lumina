Rails.application.routes.draw do
  devise_for :accounts
  get '/dashboard', to: "accounts#index"
  get 'profile/:username', to: "accounts#profile", as: :profile
  get 'post/like/:post_id' => "likes#save_like", as: :like_post
  post "follow/account" => "accounts#follow_account", as: :follow_account
  root "public#homepage"
  resources :posts, only: [:show, :new, :create]
end
