Rails.application.routes.draw do
  

  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit', as: 'edit_post'
  get 'posts/:id' => 'posts#show', as: 'post'
  patch '/posts/:id' => 'posts#update', as: 'update_post'
  delete '/posts/:id/' => 'posts#destroy', as: 'destroy_post'
  # resources　:posts


  get 'portfolios/index' => 'portfolios#index'
  get 'portfolios/show' => 'portfolios#show'
  get 'members/index' => 'members#index'
  get 'members/:id/show' => 'members#show'

  # get 'members/edit' => 'members#edit'

  # resources :members

  root 'home#top'

  get '/concept' => 'home#concept'

  get '/activity' => 'posts#index'
  
  get '/contact' => 'home#contact'
  get '/about' => 'home#about'




  devise_for :members, controllers: {
  registrations: 'members/registrations'
  }
  # root 'devise/registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
