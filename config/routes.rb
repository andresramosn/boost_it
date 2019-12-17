Rails.application.routes.draw do
  get 'tips_lists/new'
  get 'tips_lists/create'
  devise_for :users
  root to: 'pages#home'

  get "guests", to: "shares#index"
  get "guests/invite", to: "shares#new_guest"
  post "guests", to: "shares#invite_guest"
  get "guests/show", to: "shares#show"
  get "guests/share", to: "shares#share_list"
  get "guests/invite/url", to: "shares#invite_url"
  get "get_inspired", to: "tips#all_tips"
  get "get_inspired/new", to: "tips#add_to_list"


  resources :lists, only: [:index, :new, :create, :show] do
    resources :tips_lists, only: [:new, :create, :show]
  end

  resources :tips, only: [:new, :create]

  resources :tips, only: [:index, :show]
end
