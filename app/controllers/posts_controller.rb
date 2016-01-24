class PostsController < ApplicationController
  def show
  end

  def edit
  end

  def update
    set_post
    @post.update(params.permit(:title, :description))
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

end
