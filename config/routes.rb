Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # get '/admin/popups/:id/edit/quick_edit' => 'admin/popups#quick_edit', as: :admin_popup_quick_edit
  # patch '/admin/popups/:id/quick_update' => 'admin/popups#quick_update', as: :admin_popup_quick_update

  root to: 'pages#home'

  resources :pages, only: [:index]

  resources :popups do
    resources :orders, only: [ :new, :create, :destroy ]
    member do
      put "like" => "popups#vote"
    end
  end

  resources :orders, only: [ :index, :show, :create ] do

    resources :payments, only: [:new, :create]
  end

  #chat
  mount ActionCable.server => "/cable"

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
