class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: {in: %w(Fiction fiction Non-Fiction non-fiction)}
  validates :content, length: {minimum: 100}
end
