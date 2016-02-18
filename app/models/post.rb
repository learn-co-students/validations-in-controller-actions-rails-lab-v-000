class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}
  validate :category_cannot_be_anything

  def category_cannot_be_anything
    if category != 'Fiction' && category != 'Non-Fiction'
      errors.add(:category, "Must be fiction or nonfiction")
    end
  end
end
