Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "recommends#index"

  resources :recommends, only: [:index, :new, :create, :show, :destroy] do
    collection do
      get 'search'
    end
  end

  resources :users, only: [:show]

end
