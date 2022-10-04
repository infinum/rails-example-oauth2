Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :auth do
    get ':provider/callback' => 'omniauth#callback'
    get 'logout' => 'omniauth#logout'
  end
  root "home#show"
end
