class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :content, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
  # validate :category_validation


  # def category_validation
  #   categories = ["Fiction", "Non-Fiction"]
  #
  #   if categories.none? { |x| x.match category }
  #     errors.add(:category, "Category must be Fiction or Non-Fiction")
  #   end
  # end
end
