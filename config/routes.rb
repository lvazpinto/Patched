Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: "registrations" }

  resources :patches, except: %i[destroy index]  do
    member do
      get :setup, :care, :planting, :harvesting
    end
  end

  resources :vegetables, only: [:vegetable_id] do
    resources :instructions, only: [:show]
  end
end
