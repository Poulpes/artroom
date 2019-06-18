Rails.application.routes.draw do
  root to: "pages#home"
  resources :artworks, only: [:show]
end
