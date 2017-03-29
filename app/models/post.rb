class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates_inclusion_of :category, in: %w( Fiction Non-Fiction)
end
