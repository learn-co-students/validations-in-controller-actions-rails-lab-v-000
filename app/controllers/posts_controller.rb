class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update

     #UPDATE BEHAVIOR on db: if data is ok updates, is not do nothing.
     @post.update(post_params)
     #we must check then if data is ok.
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
