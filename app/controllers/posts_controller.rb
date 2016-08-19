class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    @article.category = params[:category]
    @article.content = params[:content]
    @article.title = params[:title]
    if @article.valid?
      @article.update(post_params)
      redirect_to post_path(@article)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @article = Post.find(params[:id])
  end
end
