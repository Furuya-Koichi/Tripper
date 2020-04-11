Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }

  root "posts#index"
  resources :users, only: :show
  resources :posts do
    #コメント機能
    resources :comments, only: [:create, :destroy]
    #いいね機能
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
end
