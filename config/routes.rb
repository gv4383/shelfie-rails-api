Rails.application.routes.draw do
  namespace :api do
    resources :inventory, only: %i[index]
    resources :products, only: %i[show create update destroy]
  end
end
