Rails.application.routes.draw do
  devise_for :users
  resources :tweets, except: [:edit, :update] do
    resources :comments, only: [:create, :destroy]
    member do
      post :retweet
    end
  end
  resources :profiles
  root "tweets#index"
end
