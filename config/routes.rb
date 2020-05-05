Rails.application.routes.draw do
  namespace :api do
    resources :inventory, only: %[index]
    resources :product, only: %[show create update destroy]
  end
end
