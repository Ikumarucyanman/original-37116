Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "recommends#index"

  resources :recommends, only: [:index, :new, :create]
end
