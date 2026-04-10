Rails.application.routes.draw do
  resources :books
  resources :borrowers
  resources :borrowings
  root "books#index"
end