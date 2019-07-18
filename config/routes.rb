Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api do
    get "/exercises/search/:term", to: "exercises#search"

    resources :users, only: [] do
      resources :training_dates, only: [:index, :create, :destroy]
    end
    get "/users/:id/training_dates/get_by_date/:date", to: "training_dates#get_by_date"

    resources :training_dates, only: [] do
      resources :rep_schemes
    end

    resources :rep_schemes, only: [] do
      resources :work_sets
    end
  end

end
