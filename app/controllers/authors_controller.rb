class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  private
  
  def update
    if @post.update(author_params)
      redirect_to author(@post)	    
    else
      render :edit
    end
  end	  
  
  def author_params
    params.permit(:email, :name)
  end
  
end
