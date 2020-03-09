Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :plants, only: [:create, :show, :destroy, :edit, :update] do
    member do
      patch 'seeded'
      patch 'planted'
      patch 'harvested'
    end
  end

  resources :gardens, only: [:show, :create]
  resources :vegetables, only: [:show, :index]


end

