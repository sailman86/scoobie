Rails.application.routes.draw do
  devise_for :users
  root to: 'dogs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: :show do
    resources :friendships, only: [:new, :create]
    member do
      patch :add_photo
    end
  end
  resources :friendships, only: [:show, :index]
  resources :dogs, except: :show
end
