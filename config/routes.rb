Rails.application.routes.draw do
  root "users#new"
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
