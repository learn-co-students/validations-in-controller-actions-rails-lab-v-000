require 'pry'

class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @post = Post.new(post_params)
    if @post.valid?
      @updating_post = Post.find(params[:id])
      @updating_post.category = post_params["category"]
      @updating_post.content = post_params["content"]
      @updating_post.title = post_params["title"]
      @updating_post.save
      redirect_to post_path(@updating_post)
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
