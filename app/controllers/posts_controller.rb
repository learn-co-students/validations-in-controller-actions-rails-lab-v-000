class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params) # changes to attributes of @post instance will only be saved to DB if valid
      redirect_to post_path(@post) # redirect to show page to display post just edited (different @post instance variable is used in #show action when re-retrieving instance)
    else # otherwise, the @post instance is invalid and populated with errors, so
      render :edit # hold onto the same @post instance to display its errors in the re-rendered edit form
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
