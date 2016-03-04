class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit

  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :content, :category)
  end
end
