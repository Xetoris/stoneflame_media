Rails.application.routes.draw do


  root 'mainpages#home'
  get 'mainpages/podcast'
  get 'subpages/faq'
  get 'subpages/contact'
  get 'buckets/new'
  get 'buckets/index'
  get 'messages/new'
 
  resources :buckets
end