Rails.application.routes.draw do
  resources :books, only: [:index]
end
