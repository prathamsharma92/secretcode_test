Rails.application.routes.draw do
  root to: 'secret_codes#index'

  devise_for :users
  resources :secret_codes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
