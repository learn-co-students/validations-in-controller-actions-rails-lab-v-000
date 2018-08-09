class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      # binding.pry
      render '/authors/new'
    end
  end

  private

  def author_params
    # binding.pry
    if params[:author]
      params.require(:author).permit(:email, :name)
    else
      params.permit(:email, :name)
    end
  end
end
