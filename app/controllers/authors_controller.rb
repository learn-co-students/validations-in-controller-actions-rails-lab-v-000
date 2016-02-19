class AuthorsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @author = Author.new(post_params)

    if @author.save
      redirect_to author_path @author
    else
      render :new
    end
  end

  private

  def post_params
    params.permit(:name, :email)
  end
end
