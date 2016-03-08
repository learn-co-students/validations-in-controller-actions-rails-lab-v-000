class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
  validates :content, length: { minimum: 200 }
  validate :params_are_valid?

  def params_are_valid?
    if !self.title.present? || !self.content.present? || !self.category.present?
      errors.add(:title, 'Title cannot be blank!')
      errors.add(:content, 'Content cannot be blank!')
      errors.add(:category, 'Category cannot be blank!')
    end
  end
end