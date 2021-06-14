Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users, controllers: { registrations: "registrations" }

  resources :patches, except: %i[destroy index]  do
    collection do
    end

    member do
      get :setup
      get :planting
      get :harvesting
    end
  end

  resources :vegetables, only: [:vegetable_id] do
    resources :instructions, only: [:show]
  end
end
