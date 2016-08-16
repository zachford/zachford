Rails.application.routes.draw do

  devise_for :users
resources :posts do
	resources :comments
end

root "posts#index"

 get '/about', to: 'pages#about'

 get '/home', to: 'pages#home'

 get '/design', to: 'pages#design'

 get '/music', to: 'pages#music'

 get '/other', to: 'pages#other'
 
end
