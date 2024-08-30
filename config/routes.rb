Rails.application.routes.draw do
  get 'questions/new'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users, controllers: { registrations: "users/registrations" }

  namespace :admin do
    resources :users, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  root to: "pages#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :contracts, only: [:index, :show]
  resources :invoices, only: [:index, :show]
  resources :jobs, only: [:index, :show, :update]
  resources :templates, param: :header, only: [:show, :edit, :update] do
    resources :questions, only: [:new, :create, :edit, :update, :destroy] do
      collection do
        patch :reorder
      end
    end
  end
  # resources :questions, only: [:edit, :update, :destroy]
end
