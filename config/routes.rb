Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'



  resources :lists, only: [:index, :new, :create] do
    resources :tips, only: [:new, :create]
  end
  resources :tips, only: [:index, :show]
end
