Rails.application.routes.draw do
  resources :products, :orders

  root to: "home#index"

end
