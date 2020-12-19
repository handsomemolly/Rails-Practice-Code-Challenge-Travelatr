Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:show, :new, :create, :edit, :update]
  resources :bloggers, only: [:show]
  resources :destinations,  only: [:show]

  patch 'posts/:id/add_likes', to: 'posts#add_likes', as: 'add_likes'
end
 