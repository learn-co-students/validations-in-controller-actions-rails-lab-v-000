class Post < ActiveRecord::Base
  validates :title, presence: true, allow_blank: false
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  validates :content, length: { minimum: 100 }
end
