Rails.application.routes.draw do
  
  #get 'my_article/:id' => 'article#user_article'
  #resources :articles
  resources :categories
  namespace :admin do
    resources :users
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  resources :articles do
    member do
      get 'user_articles'
    end
  end
end
