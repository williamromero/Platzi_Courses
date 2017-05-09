class PostsController < ApplicationController

	def index
		@posts = Post.all
	end 

	def edit
		@post = Post.find(params[:id])
	end

	def show
	  @postsh = Post.find(params[:id])
	  respond_to do |format|
	    format.html # show.html.erb
	    format.json  { render :json => @postsh }
	  end
	end 


end
