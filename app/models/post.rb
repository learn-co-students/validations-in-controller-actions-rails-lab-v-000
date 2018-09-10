class Post < ActiveRecord::Base
# title cannot be blank
  validates :title, presence: true
# category must be Fiction of Non-Fiction
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
# content is at least 100 characters long
  validates :content, length: { minimum: 100 }
end
