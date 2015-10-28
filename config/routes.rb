Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
  end

  root 'restaurants#index'
end
