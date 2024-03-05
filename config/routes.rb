Rails.application.routes.draw do
  devise_for :users,controllers: {
    registrations: "users/registrations",
    passwords: "users/passwords"
  }
  
  root "articles#index"
  
  resources :articles do 
    resources :comments
  end
  
end
