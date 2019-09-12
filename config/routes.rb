Rails.application.routes.draw do
  resources :profiles
  root 'posts#index'
  resources :posts
 devise_for :users, controllers: {registrations: "registrations"}
 resources :favorites, only: [:create, :destroy, :index]
 Rails.application.routes.draw do
  resources :posts do
    collection do
      post :confirm
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end
