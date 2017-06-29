Rails.application.routes.draw do
  resources :attributes do
    collection { post :import }
  end

  root to: 'attributes#index'
end
