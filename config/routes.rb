Rails.application.routes.draw do

  root 'home#top'
  get 'home/about'

  devise_for :users

  resources :users,only: [:show,:index,:edit,:update]
  resources :books

  resources :users do
    member do
     get :following, :followers
    end
  end
  resources :relationships,       only: [:create, :destroy]

end
