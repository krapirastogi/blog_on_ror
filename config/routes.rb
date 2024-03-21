Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  
  root "articles#index"
  # post 'articles/krapi', to: "articles#krapi"
  resources :articles do 
    resources :comments 
  
  # delete 'article'
  end
  
end
