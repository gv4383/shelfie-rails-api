Rails.application.routes.draw do
  namespace :api do
    resources :inventory, only: %[index]
  end
end
