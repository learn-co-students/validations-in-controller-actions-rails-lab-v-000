class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  # def create
  #   @author = Author.create!(author_params)
  #   if !!@author
  #     redirect_to author_path(@author)
  #   else
  #     handle the errors and return user to new form
  #     render :new
  #   end
  # end

  def create
    @author = Author.new(author_params)
    if @author.save
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
