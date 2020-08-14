Rails.application.routes.draw do
  #  get 'pages/home'
  resources :cocktails, only: [:index, :show, :create, :new] do 
    resources :doses, only: [:new, :create]
  end
  
  resources :doses, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  resources :articles, except: :index
end
