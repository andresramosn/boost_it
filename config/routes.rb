Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "guests", to: "shares#index"
  get "guests/invite", to: "shares#new_guest"
  post "guests", to: "shares#invite_guest"
  get "guests/show", to: "shares#show"
  get "guests/share", to: "shares#share_list"


  resources :lists, only: [:index, :new, :create, :show] do
    resources :tips, only: [:new, :create]
  end
  resources :tips, only: [:index, :show]
end
