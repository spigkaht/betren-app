Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#index"

  namespace :admin do
    resources :users, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  scope format: false do
    get "/fixjobs", to: "pages#fixjobs", as: "fixjobs"
    get "/settings", to: "pages#settings", as: "settings"
    get "/complete", to: "pages#complete", as: "complete"
    resources :contracts, only: [:index, :show]
    resources :invoices, only: [:index, :show]
    resources :jobs, only: [:index, :show, :create, :update] do
      member do
        get 'related'
      end
    end
    resources :returns, only: [:index, :new, :create, :edit, :update]
    resources :reports, only: [:index, :show]
    resources :templates, param: :header, only: [:show, :edit, :update], constraints: { header: /[^\/]+/ } do
      resources :questions, only: [:new, :create, :edit, :update, :destroy] do
        collection do
          patch :reorder
        end
      end
    end
  end

  match '*path', to: 'application#not_found', via: :all
end
