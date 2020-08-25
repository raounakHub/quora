Rails.application.routes.draw do
  resources :questions
  devise_for :users
  root to: 'landing#index'
  resources :posts
  resources :answers
end
