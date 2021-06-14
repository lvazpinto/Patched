Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :patches, except: %i[destroy]  do
    collection do
      get :setup
    end
  end

  resources :vegetables, only: [:vegetable_id] do
    resources :instructions, only: [:show]
  end
end
