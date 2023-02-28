Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts
  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
