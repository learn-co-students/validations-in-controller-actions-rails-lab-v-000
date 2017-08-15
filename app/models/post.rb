class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inlcusion: {in: %w(fiction non-fiction)}
  validates :content, length: {minimum: 100}
end
