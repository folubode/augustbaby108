Rails.application.routes.draw do
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]  # or post 'users', to: 'users#create'

resources :articles do
  resources :comments 
end


 # get 'pages/home'
get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'

resources :categories, except: [:destroy]

get 'pages/about', to: 'pages#about'

root 'articles#index'
#root :to => "pages#home"

end
