class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params) # instantiate un-saved, not-yet-validated author instance with attributes set via mass assignment from strong params
    # an author instance can only be successfully saved to DB if it's valid (i.e. if its name and email attributes are valid)
    if @author.save # if instance is valid, persist it to DB by inserting its row representation into authors table
      redirect_to author_path(@author) # redirect to show pg to show author just created. (instance variable in show action is DIFFERENT than instance variable in create action bc we re-retrieve instance)
    else # otherwise, author instance is invalid, so use its error messages when re-rendering form
      render :new # re-render the form to create a new author, displaying the error messages from the same instance
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
