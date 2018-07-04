class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    if author.valid?
        @author.save
    else

    render new
  end

  def create
    @author = Author.create!(author_params)

    redirect_to author_path(@author)
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
