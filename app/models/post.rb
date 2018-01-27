class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "Did not include specified genres" }
  validates :content, length: {minimum: 100}
end
