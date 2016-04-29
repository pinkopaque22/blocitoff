Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :new, :destroy, :create] do
     resources :items, controller: 'users/items'
   
  end
     

      

  
  root 'welcome#index'
end
