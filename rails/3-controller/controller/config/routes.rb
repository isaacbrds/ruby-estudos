Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # get "simple", controller: "simple", action:"hello", defaults: { format: 'json' }
  get 'simple/hello', defaults: { format: 'json' }
  get 'simple', to: 'simple#hello', defaults: { format: 'json' }
  get 'user/show/:id', to: 'user#show', as: 'user_show', defaults: { format: 'json' }

  get 'tasks', to: 'tasks#index', defaults: { format: 'json' }
  get 'tasks/:id', to: 'tasks#show', defaults: { format: 'json' }

  resources :posts do 
    member do
      get 'comments', to: 'posts#comments'
      post 'comments', to: 'posts#create_comments'
    end
  end

  get 'example', to: 'example#tempo'
  
  # Defines the root path route ("/")
  # root "posts#index"
end
