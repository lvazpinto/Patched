Rails.application.routes.draw do
  get 'patchvegetables/create'
  devise_for :users
  root to: 'patches#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :patches, only: %i[new create show edit index]
  resources :patch_vegetables, only: %i[create]
end
