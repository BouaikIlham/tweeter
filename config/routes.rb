Rails.application.routes.draw do
  devise_for :users
  resources :tweets, except: [:edit, :update] 

  root "tweets#index"
end
