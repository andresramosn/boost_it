Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'



  resources :lists, only: [:index, :new, :create, :show]
  resources :tips, only: [:index, :new, :create, :show]
end
