class PostsController < ApplicationController
  def show
  end

  def edit
  end

  def update
    @post = Post.find_by(params[:id])
    @post.update(params.permit(:title, :description))
    
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
