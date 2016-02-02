require 'pry'
class AuthorsController < ApplicationController
  before_action :set_author, only: [:show]

  def show
  end

  def new
    @author = Author.new
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

  def set_author
    @author = Author.find(params[:id])
  end
end
