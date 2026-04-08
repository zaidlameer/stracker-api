Rails.application.routes.draw do
  resources :users
  resources :habits 
  end
  resources :checkins, only: [ :create ]

end
