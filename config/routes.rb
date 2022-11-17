Rails.application.routes.draw do
  devise_for :users
  resources :tweets, except: [:edit, :update] 
  resources :profiles
  root "tweets#index"
end
