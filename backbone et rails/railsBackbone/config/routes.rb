Rails.application.routes.draw do
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	# get 'root/index'
	# root to: 'root#index'
	get "/" => "root#index"

	get "/posts/create" => "posts#create"
	get "/posts/read" => "posts#readAll"
	get "/posts/read/:id" => "posts#readOne"
	get "/posts/update/:id" => "posts#update"
	get "/posts/update/:id" => "posts#update"
	get "/posts/delete/:id" => "posts#delete"

end
