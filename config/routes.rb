Rails.application.routes.draw do
  # get 'members/index' => 'members#index'

  # get 'members/:id/show' => 'members#show'

  # get 'members/edit' => 'members#edit'

  resources :members

  root 'home#top'

  # get 'home/about'

  devise_for :members, controllers: {
  registrations: 'members/registrations'
  }
  # root 'devise/registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
