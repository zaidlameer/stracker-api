Rails.application.routes.draw do
  resources :users

  resources :habits do
    resources :checkins, only: [:index]
  end

  resources :checkins, only: [:create]
end