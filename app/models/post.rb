class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}
  # validate :correct_category?
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}


  # def correct_category?
  #   if !category.present? || !category.include?("Fiction" || "Non-Fiction")
  #     errors.add(:category, "Category should be either Fiction or Non-Fiction")
  #   end
  # end

end
