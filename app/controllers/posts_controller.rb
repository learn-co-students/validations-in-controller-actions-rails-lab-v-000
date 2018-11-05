require 'pry'

class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @post = set_post!
    @post.update(post_params) #do here because @post.valid? is only going to return false in cases of no name if post is equal to a validation-if just use @post = set_post! for if else like were before then there are times when it'll be true when it shouldn't be
    if @post.valid?
      redirect_to post_path(@post)
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
