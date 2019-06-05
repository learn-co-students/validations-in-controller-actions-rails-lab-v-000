class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    elsif
      @post.title == nil
      post.errors(:title) << "Your title can't be blank."
    elsif
      @post.content.length < 100
      post.errors(:content) << "Your content must be at least 100 characters long."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.valid?
      @post.update(post_params)
      redirect_to post_path(@post)
    elsif
      @post.title == nil
      post.errors(:title) << "Your title can't be blank."
    elsif
      @post.content.length < 100
      post.errors(:content) << "Your content must be at least 100 characters long."
    elsif
      @post.category != "Fiction" || @post.category != "Non-Fiction"
      post.errors(:category) << "Choose from either 'Fiction' or 'Non-Fiction' for the category."
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
