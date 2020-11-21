Rails.application.routes.draw do
  resources :factors
  resources :questions
  resources :analyses
  root to: 'pages#home'
  get '/sitemap', to: 'pages#sitemap'
  get '/sitemap.xml', :to => 'pages#sitemap', :defaults => {:format => 'xml'}
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
