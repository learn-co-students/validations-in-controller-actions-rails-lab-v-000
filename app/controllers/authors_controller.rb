class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.create!(author_params)
    
    if @author.save
      redirect_to author_path(@author)
    else
      render :new

    end# Change AuthorsController#create to re-render the form if the new author is invalid.
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
