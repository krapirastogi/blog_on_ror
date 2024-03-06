Rails.application.routes.draw do
  devise_for :users
  
  root "articles#index"
  post 'articles/krapi', to: "articles#krapi"
  resources :articles do 
    resources :comments ,except: [:destroy,:show]
  end
  
end
