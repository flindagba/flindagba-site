Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#accueil'
  get "articles", to: "articles#articles"
  get "domaines-expertise", to: "pages#domaines_expertise"
  resources :articles, only: [ :new, :create, :edit, :update, :destroy]
  resources 'contacts', only: [:new, :create], path_names: { new: '' }
end
