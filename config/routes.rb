DemoDayApp::Application.routes.draw do
  
  resources :photos

  resources :text_stories

  resources :questions

  resources :categories
  
  get "write_a_story"  => "categories#write_a_story"

  devise_for :users

  root :to => "home#index"
  
  resources :writes
  
  get "write_a_photo_story"  =>  "categories#write_a_photo_story"
  
  
end
