Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "articles", to: "articles#maveille"
  resources :articles, only: [ :new, :create, :edit, :update, :destroy]
end
