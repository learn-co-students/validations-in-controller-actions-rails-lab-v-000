class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(title: params[:title], category: params[:category])
      redirect_to @post
    else
      render :edit
    end
  end

  private

    # def post_params
    #   binding.pry
    #   params.require(:post).permit(:title, :category, :content)
    # end
end
