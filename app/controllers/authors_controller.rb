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

  def edit

  end

  private

  def author_params
    params.permit(:email, :name)
  end

  def valid?
    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
  end
end
