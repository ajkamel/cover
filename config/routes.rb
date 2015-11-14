Rails.application.routes.draw do
  resources :books, only: [:index, :show]
  resources :lists, only: [:index]
  resources :lists, only: [:index, :show]
  resources :authors, only: [:index]
end
