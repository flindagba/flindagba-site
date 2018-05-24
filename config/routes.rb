Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :articles, only: [:show, :new, :create, :edit, :update, :destroy]
end
