Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  root to: 'dogs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
  resources :users, only: [:show, :update] do
    resources :friendships, only: [:new, :create, :show, :index]
    member do
      patch :add_photo
    end
  end
  resources :dogs, except: :show
  put "friendships/:id", to: "friendships#accept", as: "accept_friendship"
  put "friendships/:id", to: "friendships#decline", as: "decline_friendship"
  get "users/:id/add_photo", to: "users#add_photo"
end
