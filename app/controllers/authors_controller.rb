class AuthorsController < ApplicationController


attr_accessor :author

  def show
  end

  def new
  end
  
  def create
    @author = Author.new
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render :new
    end
  end
      
  private
  
  def author_params
    params.permit(:email, :name)
  end
end
