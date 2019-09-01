Rails.application.routes.draw do
  devise_for :users
  root  'sayhellos#index' 
  # get 'sayhello' => 'sayhello#index'
 
  # get   'sayhello/new'  =>  'sayhello#new'
  # post  'sayhello'      =>  'sayhello#create'
  # delete  'sayhello/:id'  => 'sayhello#destroy'
  # get   'sayhello/:id/edit'  => 'sayhello#edit'
  # patch   'sayhello/:id'  => 'sayhello#update'
  
  resources :sayhellos
  get   'users/:id'   =>  'users#show' 
end
