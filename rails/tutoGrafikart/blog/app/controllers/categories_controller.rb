class CategoriesController < ApplicationController
	def index
		#@session = session[:user_id]
		@categories = Category.all
  end

	def show
		@category = Category.find(params[:id])
  end

	def update
		@category = Category.find(params[:id])
		@category.update(category_params)
		redirect_to category_path(@category.id)
  end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy
		redirect_to categories_path
  end

	def new
		@category = Category.new
  end

	def edit
		@category = Category.find(params[:id])
  end

	def create
		category = Category.create(category_params)
		redirect_to category_path(category.id)
	end

	private
	
	def category_params
		params.require(:category).permit(:name, :slug)
	end
end
