Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, only: %i[show new create] do
    member do
      resources :bookmarks, only: %i[new create]
    end
  end
  resources :bookmarks, only: :destroy
end
