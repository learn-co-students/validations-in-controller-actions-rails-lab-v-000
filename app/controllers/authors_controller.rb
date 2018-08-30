class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
<<<<<<< HEAD

    @author = Author.new(author_params)

    if @author.save

=======
    @author = Author.new(author_params)

    if @author.valid?
      @author.save
>>>>>>> 6fc83036f18cae4b4c419a3deec4c22ddec232c7
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
