class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update                               #or can do long way:
    if @post.update(post_params)            #@post.update(post_params)
      redirect_to post_path(@post)          #if @post.valid?
    else                                    #@post.save
      render :edit                          #redirect_to post_path(@post)
    end                                     #else
  end                                       #render :edit
                                            #end
                                            #end


  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
