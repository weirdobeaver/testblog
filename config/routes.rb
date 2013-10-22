Easyblog::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :posts do
    member do
      post :mark_archived
    end
  end
  resources :comments do
    member do
      put :mark_as_not_abusive
    end
  end
  resources :votes  
end
