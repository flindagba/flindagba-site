Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#accueil'
  get "articles", to: "articles#articles"
  get "domaines-expertise", to: "pages#domaines_expertise"
  get "contact", to: "pages#contact"
  resources :articles, only: [ :new, :create, :edit, :update, :destroy]
end
