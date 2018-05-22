class Post < ActiveRecord::Base
  validates :title, presence: {message: "Must have title"}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validates :content, length: {minimum: 100}
end
