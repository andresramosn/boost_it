Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tips, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists, only: [:new, :create]

  resources :tips, only: [:new, :create]
end
