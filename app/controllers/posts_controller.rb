class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update #error says it should have gone to post_path and it went to the edit form.
  #  @post= Post.find(params[:id])
      #not the right thing because it means that its valid
  if @post.update(post_params)

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
