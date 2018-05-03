class Post < ActiveRecord::Base
  # validate :post_title
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction  Non-Fiction)}
  validates :content, length: { minimum: 100 }

  # def post_title
  #   # binding.pry
  #   if !self.title
  #     self.errors.add(:title, "needs to be a title")
  #   end
  # end
end