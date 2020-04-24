Rails.application.routes.draw do
  
	root to: 'pages#home'
	get '/bonjour(/:name)', to: 'pages#salut', as: 'salut'
	#get '/articles', to: 'posts#index', as: 'posts'
	resources :posts
	resources :categories
end
