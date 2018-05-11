class PostsController < ApplicationController
  # before_action :set_post!, only: [:show, :edit, :update]

  def show
    @post = Post.find(params[:id])
  end

  def new
      # @post = post.new
  end

  def create
    @post = Post.create(title: params[:title], content: params[:content], category: params[:category])
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(title: params[:title], content: params[:content], category: params[:category])
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end


  private

  def post_params
    params.permit(:email, :name)
  end
end
