class Post < ActiveRecord::Base
	validates :title, presence: true
  	validates :title, uniqueness: true

  	validates :content, presence: true
  	validates :content, length: { minimum: 100}


  	 validates :category, inclusion: { in: %w(Fiction Non-Fiction) }


end
