Shouter::Application.routes.draw do
  root to: "homes#show"
  resource :session, only: [:new, :create, :destroy]
  resource :dashboard, only: [:show]
  resources :users, only: [:index,:new, :show, :create] do
  	post 'follow' => 'following_relationships#create'
  	delete 'follow' => 'following_relationships#destroy'
  end
  resources :shouts, only: [:show]
  resources :text_shouts, only: [:create]
  resources :photo_shouts, only: [:create]
  resources :hashtags, only: [:show]
end