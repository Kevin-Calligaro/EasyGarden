Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users

  resources :gardens, only: [:show, :new, :create, :edit, :update]

  resources :garden_vegetables, only: [:create, :destroy]

  resources :tasks, only: [] do
    member do
      patch :mark_as_done
    end
  end
end
