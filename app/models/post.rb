class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  validates :content, length: {minimum: 100}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
end
