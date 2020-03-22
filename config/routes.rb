Rails.application.routes.draw do
  root to: "in_apps#index"
  devise_for :users
  resources :types
  resources :in_apps do
    resources :buttons
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
