Rails.application.routes.draw do
  resources :products, :orders, :promotions

  namespace 'api' do
  	namespace 'v1' do
      resources :products
    end
  end

  namespace 'api' do
  	namespace 'v1' do
      resources :orders
    end
  end

  root to: "home#index"
end
