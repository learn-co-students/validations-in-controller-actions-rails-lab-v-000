class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end

<<<<<<< HEAD
    if @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
=======
>>>>>>> 6fc83036f18cae4b4c419a3deec4c22ddec232c7
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
