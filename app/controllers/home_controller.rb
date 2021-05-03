class HomeController < ApplicationController
	
  def index
  	@category = Category.all
  	@post = Post.joins(:user)
  end

  def show 
  	@category = Category.all
  	@post = Post.joins(:category).where(:categories => {:id => params[:id]})
  end
end
