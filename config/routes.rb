Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :types
  resources :in_apps do
    resources :buttons
  end
  post '/in_apps/change_type'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
