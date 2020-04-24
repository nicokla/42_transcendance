class PostsController < ApplicationController

	before_action :set_post, only: [:update, :edit, :show, :destroy]

	def index
		#session[:user_id] = 4
		#flash.now[:success] = "Hello"
		#cookies[:username] = {
		#	value: JSON.generate({name:'John'}),
		# 	expires: 1.month.from_now
		# }
		#puts JSON.parse(cookies[:username]).inspect
		#cookies.signed[:username] = "John"
		#cookies.permanent.encrypted[:username] = "John"
		#cookies.delete(:username)


		# @posts = Post.online("wrofunw").all 
		# @posts = Post.offline.alpha.rewhere(online:1).all 
		# @posts = Post.online.unscoped.order(name: :desc).all 
		# @posts = Post.where(online: 1, name: 'Salut).unscope(where: :name).all 
		@posts = Post.includes(:category, :tags).all
		respond_to do |format|
			format.html
			format.json {render json: @posts}
			format.rtf {render plain: "coucou"}
			#format.json do
			#	render json: @posts.as_json(only: [:name, :created_at, :id])
			#end
			#format.xml {render xml: @posts }
		end
	end

	def show
		respond_to do |format|
			format.html
			format.json {render json: @post}
		end
		# pour + : gem jbuilder
	end
	
	def edit
	end

	def update
		# @post.update(params[:post])
		# post_params = params.require(:post).permit(:name, :content)
		if @post.update(post_params)
			redirect_to posts_path, success:"Article modifie avec succes"
		else
			render 'edit'
		end
		# session[:success] = "Article modifie avec succes"
		#flash[:success] = "Article modifie avec succes"
		#flash[:danger] = "Article modifie avec succes"
		#redirect_to posts_path, flash: {success:"Article modifie avec succes"}
		
	end

	def new
		@post = Post.new
	end

	def create
		post = Post.create(post_params)
		redirect_to post_path(post.id), success:"Article créé avec succes"
	end

	def destroy
		@post.destroy
		redirect_to posts_path, success:"Article supprimé avec succes"
	end

	private
	def post_params
		params.require(:post).permit(:name, :content, :slug, :category_id)
	end

	def set_post
		@post = Post.find(params[:id])
	end
end
