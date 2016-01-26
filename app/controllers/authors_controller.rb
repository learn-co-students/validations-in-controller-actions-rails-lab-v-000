class AuthorsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @author = Author.new(params.permit(:name, :email))
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end
end
