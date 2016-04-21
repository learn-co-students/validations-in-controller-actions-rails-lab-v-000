class Post < ActiveRecord::Base
  validates_presence_of :title
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} must be either Fiction or Non-Fiction"}
  validates :content, length: { minimum: 100}
end
