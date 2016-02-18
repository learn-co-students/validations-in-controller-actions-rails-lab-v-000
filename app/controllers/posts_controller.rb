class PostsController < ApplicationController
  def show
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
    {title: params[:title], category: params[:category], content: params[:content]}
  end
end
