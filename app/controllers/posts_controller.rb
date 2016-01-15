class PostsController < ApplicationController
  def show
  end

  def edit
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render "edit"
    end
  end

  private

  def post_params
    params.permit(:title,:content,:category)
  end
end
