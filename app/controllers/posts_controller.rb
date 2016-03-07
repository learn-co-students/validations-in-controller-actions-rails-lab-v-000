class PostsController < ApplicationController
  def show
  end

  def edit
  end

  def update
  	#binding.pry
  	@post = Post.find(params[:id])
  	@post.attributes= ({title: params[:title], category: params[:category], content: params[:content]})
  	if @post.valid?
  		@post.save
  		redirect_to post_path(@post)
  	else
  		render :edit
  	end

  end

  private

  def post_params
  end
end
