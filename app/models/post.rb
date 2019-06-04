class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, presence: true, inclusion: {in: %w(Fiction Non-Fiction)}
end
