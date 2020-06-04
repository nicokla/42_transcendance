class PostsController < ApplicationController
	# CRUD: create, read, update, delete

	# 1) Create

	def create
		permitted = params.permit(:title, :content)
		post = Post.create(permitted)
	end

	# 2) Read

	def readAll
		posts = Post.all()
		render(:json => posts)	
	end

	def readOne
		post = Post.find(params[:id])
		render(:json => post)
	end
	
	# 3) Update

	def update
		post = Post.find(params[:id])
		permitted = params.permit(:title,:content) #.require("post")
		post.update(permitted) #params[:post]
		render(:json => post.reload())
	end

	# 4) Delete

	def delete
		post = Post.find(params[:id])
		post.destroy()
	end

end
