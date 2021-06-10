Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :patches, only: %i[new create show edit index]  do
      post 'patchvegetables/create', controller: 'patch_vegetables', action: :create

    collection do
      get :setup
    end
  end
  
  resources :vegetables, only: [:vegetable_id] do
    resources :instructions, only: [:show]
  end
end
