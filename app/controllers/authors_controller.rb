class AuthorsController < ApplicationController
  def show
  end

  def new
  end

  def create
    @author = Author.new(name: params[:name], email: params[:email])
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

 
end #ends class
