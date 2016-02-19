class PostsController < ApplicationController

  before_action :post_params, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update

     if @post.update(title: params[:title], category: params[:category], content: params[:content])
      redirect_to @post
    else
      render :edit
    end
  end

  private

  def post_params
    @post = Post.find(params[:id])
  end
end
