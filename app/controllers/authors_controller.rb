class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    redirect_to author_path(@author)
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render "new"
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
