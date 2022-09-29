Rails.application.routes.draw do
  get "welcome/index"
  devise_for :users
  mount Sidekiq::Web => "/sidekiq" if defined?(Sidekiq) # monitoring console
  root "welcome#index", as: :root
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
