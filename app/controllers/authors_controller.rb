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
      render :new
    end
  end

  def update
    @author = Author.new(author_params)

    if @author.valid?
      Author.find(params[:id]).update(author_params)
    else
      render :edit
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
