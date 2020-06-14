Rails.application.routes.draw do
	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	# get 'root/index'
	# root to: 'root#index'
	get "/" => "root#index"
	get "/chooseWhoAmI" => "root#chooseWhoAmI"
	resources :games, :except => [:show, :new, :edit]
	resources :players, :only => [:create]
	resources :players_games, :only => [:create]
end
