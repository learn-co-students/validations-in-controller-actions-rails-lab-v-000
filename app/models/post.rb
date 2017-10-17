class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "Must be fiction or non-fiction" }
  validates :content, length: { minimum: 100 }
end
