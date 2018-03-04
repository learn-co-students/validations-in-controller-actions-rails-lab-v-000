class Post < ActiveRecord::Base
	validates :title, presence: true
	validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
	validates :content, length: { :minimum => 100}

	# PostsController making invalid updates has an error for missing title
	# PostsController making invalid updates has an error for too short content
	# PostsController making invalid updates has an error for invalid category
	# PostsController making invalid updates controller actions does not update
	# PostsController making invalid updates controller actions renders the form again

end
