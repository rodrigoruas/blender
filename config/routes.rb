Rails.application.routes.draw do
  devise_for :users
  root to: "in_apps#index"
  resources :in_apps
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
