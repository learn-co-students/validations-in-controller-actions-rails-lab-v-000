class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
      # @author = Author.new

  end

  def create
    @author = Author.create(name: params[:name], email: params[:email])
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])
    if @author.valid?
      @author.update(name: params[:name], email: params[:email])
      redirect_to author_path(@author)
    else
      render :edit
    end
  end


  private

  def author_params
    params.permit(:email, :name)
  end
end

# def new
#   @author = Author.new
# end

# def create
#   @author = Author.new(name: params[:author][:name], email: params[:author][:email])
#   if @author.valid?
#       @author.save
#       redirect_to author_path(@author)
#   else
#       render :new
#   end
# end

# def show
#   @author = Author.find(params[:id])
# end

# def edit
#   @author = Author.find(params[:id])
# end

# def update
#   @author = Author.find(params[:id])
#   @author.update(name: params[:author][:name], email: params[:author][:email])
#   redirect_to author_path(@author)
# end

