Rails.application.routes.draw do
  resources :books, only: [:index, :show]
  resources :lists, only: [:index]
  resources :authors, only: [:index]
end
