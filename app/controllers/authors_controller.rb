class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      #binding.pry
      redirect_to author_path(@author)
    else
      flash[:error] = @author.errors.full_messages
      #binding.pry
      render new_author_path
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
