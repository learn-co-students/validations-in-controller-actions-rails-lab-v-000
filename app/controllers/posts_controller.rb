class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    updated_post = Post.new(post_params)
    if updated_post.valid?
      @post = Post.update(post.id, post_params)
      redirect_to post_path()
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
