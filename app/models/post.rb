class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true, length: {minimum: 10}
  validates :category, presence: true, length: {minimum: 10}
end
