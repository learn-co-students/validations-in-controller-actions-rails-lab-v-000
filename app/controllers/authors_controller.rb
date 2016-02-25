class AuthorsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to @author
    else
      render :new
    end
  end

  private

    def author_params
      params.permit(:name, :email)
    end
end
