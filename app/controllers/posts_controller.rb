class PostsController < ApplicationController
  def show
    find_post
  end

  def edit
    find_post
  end

  def update
    find_post
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
      params.permit(:title, :category, :content)
    end

    def find_post
      @post = Post.find(params[:id])
    end
end
