Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
resources :posts do
	resources :comments
end

root "pages#home"

 get '/about', to: 'pages#about'

 get '/home', to: 'pages#home'

 get '/work', to: 'pages#work'

 get '/music', to: 'pages#music'

 get '/other', to: 'pages#other'
 
end
