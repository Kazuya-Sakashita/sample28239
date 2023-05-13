Rails.application.routes.draw do
  resources :girls, only: [:index]
end
