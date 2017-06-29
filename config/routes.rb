Rails.application.routes.draw do
  resources :attributes do
    collection { post :import }
  end

  resources :items
  root to: 'attributes#index'
end
