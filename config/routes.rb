Shouter::Application.routes.draw do
  root to: "homes#show"
  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]
  resources :users, only: [:new, :show, :create]
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
end
