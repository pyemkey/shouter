Shouter::Application.routes.draw do
  root to: "homes#show"
  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]
  resources :users, only: [:new, :create]
end
