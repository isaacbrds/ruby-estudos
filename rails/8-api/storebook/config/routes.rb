Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users

  post 'login', to: 'authentication#login'
  namespace :api do 
    namespace :v1 do 
      resources :authors
      resources :books
    end
  end
end
