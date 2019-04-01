Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :worksheet, only: [:index, :new, :create, :destroy]
  
  root 'pages#index'

  get '/about', to: 'pages#about'

end
