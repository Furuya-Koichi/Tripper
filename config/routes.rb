Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root "posts#index"
  resources :users, only: :show
  resources :posts do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
end
