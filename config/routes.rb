DemoDayApp::Application.routes.draw do
  
  resources :videos

  resources :profile, :only => :index
  
  resources :photos

  resources :text_stories

  resources :questions

  resources :categories
  
  get "write_a_story"  => "categories#write_a_story", as: :story

  devise_for :users

  root :to => "categories#home"
  
  resources :writes
  
  get "write_a_photo_story"  =>  "categories#write_a_photo_story", as: :photo_story
  
  get "record_a_video_story"  =>  "categories#record_a_video_story", as: :video_story

  
  
end
