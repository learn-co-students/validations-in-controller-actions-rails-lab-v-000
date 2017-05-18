class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @post.title = params[:title]
    @post.content = params[:content]
    @post.category = params[:category]

    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params(*arg)
    params.permit(*arg)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
