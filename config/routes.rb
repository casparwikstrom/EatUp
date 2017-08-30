Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  root to: 'pages#home'


  resources :popups do
    resources :orders, only: [ :new, :create, :destroy ]
    member do
      put "like" => "popups#vote"
    end
  end

  resources :orders, only: [ :index, :show ]

  resources :profiles


  # resources :popups do
  #   member do
  #     put "like" => "popups#upvote"
  #     put "unlike" => "popups#downvote"
  #   end
  # end

  resources :popups do
    resources :wishlists, only: [:new, :create, :destroy]
  end

  resources :wishlists, only: [:index, :destroy]


  mount Attachinary::Engine => "/attachinary"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
