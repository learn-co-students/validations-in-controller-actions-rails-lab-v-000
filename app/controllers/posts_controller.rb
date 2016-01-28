class PostsController < ApplicationController
  def show
  end

  def edit
  end

  def update
  	updated_post=Post.find(params[:id])

  	updated_post.update(post_params)

  	if updated_post.valid?
  		updated_post.save
		redirect_to post_path(updated_post)
	else
		render 'posts/edit'
	end

  end

  	private

		def post_params
			params.permit(:title, :category_id, :content)
		end
end
