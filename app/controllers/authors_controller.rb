class AuthorsController < ApplicationController
  def show
  end

  def new
  end

  def create

		new_author=Author.new(name:params[:name], email:params[:email])
		
		if new_author.valid?
			new_author.save
			redirect_to author_path(new_author)
		else
			render 'authors/new'
		end

	end
end
