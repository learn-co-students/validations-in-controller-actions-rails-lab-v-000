class Post < ActiveRecord::Base
  validates :title, length: {minimum: 1}, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :content, length: {minimum: 100}
end
