Rails.application.routes.draw do
  devise_for :users, skip: [:registrations]
  root to: 'pages#accueil'
  get "articles", to: "articles#articles"
  get "domaines-expertise", to: "pages#domaines_expertise"
  get "mentions-legales", to: "pages#mentions_legales"
  get "honoraire", to: "pages#honoraire"
  resources :articles, only: [ :new, :create, :edit, :update, :destroy]
  resources 'contacts', only: [:new, :create], path_names: { new: '' }
end
