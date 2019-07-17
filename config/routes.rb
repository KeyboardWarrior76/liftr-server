Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'

  namespace :api do
    get "/users/:id/training_dates", to: "training_dates#index"
  end

end
