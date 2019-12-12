Rails.application.routes.draw do
  get 'tips_lists/new'
  get 'tips_lists/create'
  devise_for :users
  root to: 'pages#home'




  resources :lists, only: [:index, :new, :create, :show] do
    resources :tips, only: [:new, :create]
  end
  resources :tips, only: [:index, :show]
end
