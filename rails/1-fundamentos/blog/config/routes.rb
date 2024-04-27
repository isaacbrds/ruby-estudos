Rails.application.routes.draw do
  devise_for :users
  get 'search', to: 'search#index'
  root 'home#index'
  resources :posts do 
    resources :comments
  end
end
