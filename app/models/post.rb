class Post < ActiveRecord::Base
  validates :title, presence true
  validates :content, inclusion: {in %w(Non-Fiction Fiction) }
end
