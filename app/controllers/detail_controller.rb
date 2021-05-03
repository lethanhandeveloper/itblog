class DetailController < ApplicationController
	def index
		@category = Category.all
		@post = Post.find(params[:id])
	end

	def show
		@category = Category.all
		@post = Post.joins(:user).where(:posts => {:id => params[:id]}).first
		
	end
end
