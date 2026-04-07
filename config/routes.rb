Rails.application.routes.draw do
  resources :users
  resources :habits do
    resources :habit_events, only: [ :index ]
  end
  resources :checkins, only: [ :create ]

end
