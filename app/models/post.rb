class Post < ActiveRecord::Base
  validates_presence_of :title
  validates :content, length: { minimum: 30 }
  validates_presence_of :category
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
