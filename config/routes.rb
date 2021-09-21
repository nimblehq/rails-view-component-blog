Rails.application.routes.draw do
  root to: 'articles#index'

  resources :articles do
    resources :comments, only: [:create]
  end

  devise_for :users
end
