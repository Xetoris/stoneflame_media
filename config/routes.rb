Rails.application.routes.draw do

  root 'mainpages#home'
  get 'mainpages/podcast'
  get 'subpages/faq'
  get 'subpages/contact'
  get 'buckets/new'
  get 'buckets/index'
  get 'messages/new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  resources :buckets
  resources :messages do
    resources :comments
  end
  resources :sessions
  resources :users
end